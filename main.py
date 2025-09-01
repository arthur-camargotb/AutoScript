# Requisitos: Python 3.8+
# Instalar as bibliotecas com:
# pip install PySide6 psycopg2-binary oracledb pyodbc configparser

import sys
import os
import traceback
import datetime
import configparser
import re

from PySide6.QtWidgets import (
    QApplication, QWidget, QLabel, QLineEdit, QPushButton, QComboBox,
    QVBoxLayout, QHBoxLayout, QFormLayout, QStackedWidget, QSizePolicy,
    QTextEdit, QFileDialog, QMessageBox, QScrollArea
)
from PySide6.QtGui import QFont, QPalette, QColor
from PySide6.QtCore import Qt, QSize

# IMPORTS DE BANCO
import psycopg2
import oracledb
import pyodbc

# Diretório base do projeto para localizar arquivos de script
BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# Garante que o oracledb possa ser importado.
if sys.platform.startswith("win"):
    try:
        oracledb.init_oracle_client()
    except oracledb.DatabaseError:
        pass

def _parse_sql_commands(script):
    """
    Divide um script SQL em comandos individuais de forma robusta.
    Comentários de linha ou bloco são removidos antes da execução.
    Esta versão lida corretamente com aspas simples, aspas duplas e,
    crucialmente, aspas entre dólares ($tag$ ... $tag$) do PostgreSQL,
    evitando erros de sintaxe.
    """
    commands = []
    current_command = ""
    in_single_quotes = False
    in_double_quotes = False
    in_block_comment = False
    in_line_comment = False
    in_dollar_quote = False
    dollar_quote_tag = None
    
    i = 0
    while i < len(script):
        char = script[i]
        
        # Lida com comentários de bloco
        if char == '/' and i + 1 < len(script) and script[i + 1] == '*' and not (
            in_single_quotes or in_double_quotes or in_dollar_quote
        ):
            in_block_comment = True
            i += 1  # pula o '*'
        elif in_block_comment and char == '*' and i + 1 < len(script) and script[i + 1] == '/':
            in_block_comment = False
            i += 1  # pula o '/'
            current_command += " "  # evita juntar tokens adjacentes
        elif in_block_comment:
            pass  # ignora conteúdo dentro de comentários de bloco

        # Lida com comentários de linha
        elif (
            char == '-' and i + 1 < len(script) and script[i + 1] == '-' and not (
                in_single_quotes or in_double_quotes or in_dollar_quote
            )
        ):
            in_line_comment = True
            i += 1  # pula o segundo '-'
        elif in_line_comment and char == '\n':
            in_line_comment = False
            current_command += char  # mantém a quebra de linha
        elif in_line_comment:
            pass  # ignora o conteúdo do comentário de linha

        # Lida com aspas entre dólares (PostgreSQL)
        elif char == '$' and not (in_single_quotes or in_double_quotes or in_block_comment or in_line_comment):
            if in_dollar_quote:
                # Verifica se é o final da aspa
                end_tag_match = re.match(r'\$' + re.escape(dollar_quote_tag) + r'\$', script[i:])
                if end_tag_match:
                    current_command += end_tag_match.group(0)
                    in_dollar_quote = False
                    dollar_quote_tag = None
                    i += len(end_tag_match.group(0)) - 1
                else:
                    current_command += char
            else:
                # Tenta encontrar o tag de início da aspa
                start_tag_match = re.match(r'\$[a-zA-Z0-9]*\$', script[i:])
                if start_tag_match:
                    in_dollar_quote = True
                    dollar_quote_tag = start_tag_match.group(0)[1:-1]
                    current_command += start_tag_match.group(0)
                    i += len(start_tag_match.group(0)) - 1
                else:
                    current_command += char

        # Lida com aspas simples
        elif char == "'" and not (in_double_quotes or in_block_comment or in_line_comment or in_dollar_quote):
            in_single_quotes = not in_single_quotes
            current_command += char

        # Lida com aspas duplas
        elif char == '"' and not (in_single_quotes or in_block_comment or in_line_comment or in_dollar_quote):
            in_double_quotes = not in_double_quotes
            current_command += char

        # Lida com o separador de comandos
        elif char == ';' and not (in_single_quotes or in_double_quotes or in_block_comment or in_line_comment or in_dollar_quote):
            command_to_add = current_command.strip()
            if command_to_add:
                commands.append(command_to_add)
            current_command = ""
        else:
            current_command += char
        
        i += 1
    
    # Adiciona o comando restante, se houver
    if current_command.strip():
        commands.append(current_command.strip())
        
    return [cmd for cmd in commands if cmd]

class DatabaseManager:
    """
    Classe para gerenciar a conexão e execução de scripts SQL.
    """
    def __init__(self, banco, url, porta, usuario, senha, dbname=None):
        self.banco = banco
        self.url = url
        self.porta = porta
        self.usuario = usuario
        self.senha = senha
        self.dbname = dbname
        self.conn = None

    def abrir_conexao(self):
        """Abre a conexão com o banco de dados selecionado."""
        try:
            if self.banco == "PostgreSQL":
                conn_params = {
                    "host": self.url,
                    "port": self.porta,
                    "user": self.usuario,
                    "password": self.senha,
                    "dbname": self.dbname if self.dbname else "postgres"
                }
                self.conn = psycopg2.connect(**conn_params)
            elif self.banco == "Oracle":
                dsn = oracledb.makedsn(self.url, self.porta, service_name=self.dbname)
                self.conn = oracledb.connect(self.usuario, self.senha, dsn=dsn)
            elif self.banco == "SQL Server":
                conn_str = f"DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={self.url},{self.porta};UID={self.usuario};PWD={self.senha};DATABASE={self.dbname}"
                self.conn = pyodbc.connect(conn_str)
            else:
                raise ValueError("Banco de dados não suportado.")
            return True, None
        except Exception as e:
            return False, traceback.format_exc()

    def fechar_conexao(self):
        """Fecha a conexão com o banco de dados."""
        if self.conn:
            self.conn.close()

    def executar_bloco(self, bloco):
        """
        Executa um bloco de script SQL, dividindo-o em comandos individuais
        e removendo comentários para evitar erros de sintaxe.
        """
        if not self.conn:
            return False, "Conexão não está aberta."
        
        try:
            cursor = self.conn.cursor()
            
            # Divide o script de forma inteligente, ignorando ';' dentro de strings
            comandos = _parse_sql_commands(bloco)
            
            if not comandos:
                return False, "Nenhum comando SQL válido encontrado para executar."

            for cmd in comandos:
                # Executa cada comando separadamente e trata duplicações de tabelas
                try:
                    cursor.execute(cmd)
                except Exception as e:
                    if self.banco == "PostgreSQL" and isinstance(e, psycopg2.errors.DuplicateTable):
                        # Obtém o nome da tabela a partir do próprio comando e a recria
                        match = re.search(
                            r'CREATE\s+TABLE\s+(?:IF\s+NOT\s+EXISTS\s+)?"?([^\s(\"]+)"?',
                            cmd,
                            re.IGNORECASE,
                        )
                        if match:
                            tabela = match.group(1)
                            cursor.execute(f'DROP TABLE IF EXISTS {tabela} CASCADE')
                            cursor.execute(cmd)
                        else:
                            raise
                    else:
                        raise
            self.conn.commit()
            cursor.close()
            return True, None
        except Exception as e:
            self.conn.rollback()
            cursor.close()
            return False, traceback.format_exc()

    def inserir_imagens_marcadores(self, icons_dir):
        """Insere imagens padrão na tabela de marcadores.

        Caso algum arquivo de imagem não esteja disponível, o método apenas
        ignora-o sem gerar erros. Retorna a quantidade de imagens inseridas.
        """
        if not self.conn:
            raise Exception("Conexão não está aberta.")

        if not os.path.isdir(icons_dir):
            return 0

        cursor = self.conn.cursor()
        inseridos = 0
        try:
            imagens = [(1, "30.png"), (2, "60.png"), (3, "90.png")]
            for cd, nome_arquivo in imagens:
                caminho = os.path.join(icons_dir, nome_arquivo)
                if not os.path.exists(caminho):
                    continue
                with open(caminho, "rb") as img:
                    dados = img.read()

                cd_str = str(cd)
                if self.banco == "PostgreSQL":
                    cursor.execute(
                        "UPDATE tblvwmarcador SET immarcadorativo = %s WHERE cdmarcador = %s",
                        (psycopg2.Binary(dados), cd_str),
                    )
                elif self.banco == "Oracle":
                    cursor.execute(
                        "UPDATE tblvwmarcador SET immarcadorativo = :1 WHERE cdmarcador = :2",
                        [dados, cd_str],
                    )
                elif self.banco == "SQL Server":
                    cursor.execute(
                        "UPDATE tblvwmarcador SET immarcadorativo = ? WHERE cdmarcador = ?",
                        (dados, cd_str),
                    )

                inseridos += 1

            self.conn.commit()
            return inseridos
        finally:
            cursor.close()

class TelaInicial(QWidget):
    def __init__(self, avancar_callback):
        super().__init__()
        self.avancar_callback = avancar_callback
        self.config = configparser.ConfigParser()
        self.config.read(os.path.join(BASE_DIR, 'config.ini'))

        self.setStyleSheet("""
            QWidget {
                background-color: #2b2b2b;
                color: #f0f0f0;
                font-family: 'Segoe UI';
                font-size: 12pt;
            }
            QLineEdit, QComboBox {
                background-color: #3c3c3c;
                border: 1px solid #555;
                padding: 8px;
                border-radius: 6px;
                color: #f0f0f0;
            }
            QLineEdit:focus, QComboBox:focus {
                border: 1px solid #0078d7;
                outline: none;
                background-color: #4a4a4a;
            }
            QPushButton {
                background-color: #0078d7;
                color: white;
                padding: 10px;
                border-radius: 6px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #005a9e;
            }
            QPushButton:disabled {
                background-color: #4a4a4a;
                color: #999;
            }
            QLabel {
                font-weight: bold;
                color: #f0f0f0;
            }
        """)

        # Novos campos solicitados
        self.cliente_input = QLineEdit()
        self.erp_combo = QComboBox()
        self.ip_interno_input = QLineEdit()
        self.porta_tomcat_input = QLineEdit()

        self.erp_combo.addItems(["Sankhya", "Senior", "WMW"])

        # Campos extras por ERP
        def create_line_edit(placeholder=None, echo_mode=None):
            line_edit = QLineEdit()
            if placeholder:
                line_edit.setPlaceholderText(placeholder)
            if echo_mode is not None:
                line_edit.setEchoMode(echo_mode)
            return line_edit

        self.campos_extras_por_erp = {
            "Sankhya": [
                ("Campo Sankhya 1:", lambda: QLineEdit()),
                ("Campo Sankhya 2:", lambda: QLineEdit())
            ],
            "Senior": [
                ("Url Senior:", lambda: create_line_edit(placeholder="Somente ip:porta")),
                ("Usuario Senior:", lambda: QLineEdit()),
                ("Senha Senior:", lambda: create_line_edit(echo_mode=QLineEdit.Password))
            ],
            "WMW": [
                ("Campo WMW 1:", lambda: QLineEdit())
            ]
        }
        self.campos_extras_widgets = []

        # Carrega as configurações salvas, incluindo os novos campos
        if 'DEFAULT' in self.config:
            self.cliente_input.setText(self.config.get('DEFAULT', 'cliente', fallback=''))
            self.ip_interno_input.setText(self.config.get('DEFAULT', 'ip_interno', fallback=''))
            self.porta_tomcat_input.setText(self.config.get('DEFAULT', 'porta_tomcat', fallback=''))
            erp_index = self.erp_combo.findText(self.config.get('DEFAULT', 'erp', fallback=''))
            if erp_index != -1:
                self.erp_combo.setCurrentIndex(erp_index)

        layout = QVBoxLayout()
        layout.setContentsMargins(40, 40, 40, 40)
        layout.setSpacing(20)

        title = QLabel("Configuração Inicial")
        title.setFont(QFont("Segoe UI", 16, QFont.Bold))
        title.setAlignment(Qt.AlignCenter)

        form = QFormLayout()
        form.setSpacing(15)
        form.addRow("Nome do Cliente:", self.cliente_input)
        form.addRow("IP Interno:", self.ip_interno_input)
        form.addRow("Porta Tomcat:", self.porta_tomcat_input)
        form.addRow("ERP:", self.erp_combo)

        # Configuração de campos extras
        self.form = form
        self.extras_row_start = self.form.rowCount()
        self.erp_combo.currentTextChanged.connect(self.atualizar_campos_extras)
        self.atualizar_campos_extras(self.erp_combo.currentText())

        avancar_btn = QPushButton("Avançar")
        avancar_btn.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Fixed)
        avancar_btn.clicked.connect(self.salvar_e_avancar)

        layout.addWidget(title)
        layout.addSpacing(20)
        layout.addLayout(form)
        layout.addStretch()
        layout.addWidget(avancar_btn)

        self.setLayout(layout)

    def salvar_e_avancar(self):
        if not self.cliente_input.text().strip():
            QMessageBox.warning(self, "Campo Obrigatório", "O campo 'Nome do Cliente' é obrigatório.")
            return

        # Salvando os novos campos na configuração
        self.config['DEFAULT'] = {
            'cliente': self.cliente_input.text(),
            'erp': self.erp_combo.currentText(),
            'ip_interno': self.ip_interno_input.text(),
            'porta_tomcat': self.porta_tomcat_input.text()
        }
        with open(os.path.join(BASE_DIR, 'config.ini'), 'w') as configfile:
            self.config.write(configfile)
        self.avancar_callback()

    def get_dados(self):
        # Retornando os novos campos, incluindo extras
        extras = {label.rstrip(":"): widget.text() for label, widget in self.campos_extras_widgets}
        return {
            "cliente": self.cliente_input.text(),
            "erp": self.erp_combo.currentText(),
            "ip_interno": self.ip_interno_input.text(),
            "porta_tomcat": self.porta_tomcat_input.text(),
            "extras": extras
        }

    def atualizar_campos_extras(self, erp):
        # Remove campos extras existentes
        while self.form.rowCount() > self.extras_row_start:
            self.form.removeRow(self.extras_row_start)
        self.campos_extras_widgets = []

        # Adiciona novos campos conforme o ERP
        for label, widget_factory in self.campos_extras_por_erp.get(erp, []):
            widget = widget_factory()
            self.form.addRow(label, widget)
            self.campos_extras_widgets.append((label, widget))

class TelaConexao(QWidget):
    def __init__(self, voltar_callback):
        super().__init__()
        self.voltar_callback = voltar_callback
        self.db_manager = None
        self.log = ""
        self.config = configparser.ConfigParser()
        self.config.read(os.path.join(BASE_DIR, 'config.ini'))

        self.setStyleSheet("""
            QWidget {
                background-color: #2b2b2b;
                color: #f0f0f0;
                font-family: 'Segoe UI';
                font-size: 12pt;
            }
            QLineEdit, QTextEdit, QComboBox {
                background-color: #3c3c3c;
                border: 1px solid #555;
                padding: 8px;
                border-radius: 6px;
                color: #f0f0f0;
            }
            QLineEdit:focus, QTextEdit:focus, QComboBox:focus {
                border: 1px solid #0078d7;
                outline: none;
                background-color: #4a4a4a;
            }
            QPushButton {
                background-color: #0078d7;
                color: white;
                padding: 10px;
                border-radius: 6px;
                font-weight: bold;
            }
            QPushButton:hover {
                background-color: #005a9e;
            }
            QPushButton:disabled {
                background-color: #4a4a4a;
                color: #999;
            }
            QLabel {
                font-weight: bold;
            }
            QTextEdit {
                font-family: 'Courier New';
                font-size: 10pt;
                background-color: #1e1e1e;
                border: 1px solid #555;
            }
        """)

        main_layout = QVBoxLayout(self)
        scroll_area = QScrollArea()
        scroll_area.setWidgetResizable(True)
        scroll_area.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)

        scroll_content = QWidget()
        self.main_content_layout = QVBoxLayout(scroll_content)
        self.main_content_layout.setContentsMargins(40, 40, 40, 40)
        self.main_content_layout.setSpacing(15)

        scroll_area.setWidget(scroll_content)
        main_layout.addWidget(scroll_area)

        title = QLabel("Detalhes da Conexão e Execução")
        title.setFont(QFont("Segoe UI", 16, QFont.Bold))
        title.setAlignment(Qt.AlignCenter)
        self.main_content_layout.addWidget(title)
        self.main_content_layout.addSpacing(20)
        
        self.banco_combo = QComboBox()
        self.banco_combo.addItems(["PostgreSQL", "Oracle", "SQL Server"])
        self.banco_combo.currentIndexChanged.connect(self.atualizar_campos_conexao)
        
        self.form_layout = QFormLayout()
        self.form_layout.setSpacing(15)
        self.form_layout.addRow("Banco:", self.banco_combo)
        
        self.conexao_placeholder_row = self.form_layout.rowCount()

        self.main_content_layout.addLayout(self.form_layout)
        self.main_content_layout.addSpacing(10)

        botoes_layout = QHBoxLayout()
        self.voltar_btn = QPushButton("← Voltar")
        self.voltar_btn.setToolTip("Voltar para a tela inicial")
        self.voltar_btn.clicked.connect(self.voltar_callback)
        self.validar_btn = QPushButton("Validar Conexão")
        self.validar_btn.clicked.connect(self.validar_conexao)
        self.executar_btn = QPushButton("Executar Script")
        self.executar_btn.setEnabled(False)
        self.executar_btn.clicked.connect(self.executar_script)

        botoes_layout.addWidget(self.voltar_btn)
        botoes_layout.addWidget(self.validar_btn)
        botoes_layout.addWidget(self.executar_btn)
        self.main_content_layout.addLayout(botoes_layout)
        self.main_content_layout.addSpacing(10)

        self.status_output = QTextEdit()
        self.status_output.setReadOnly(True)
        self.status_output.setFixedHeight(200)
        self.status_output.setPlaceholderText("Logs de conexão e execução aparecerão aqui...")

        self.download_log_btn = QPushButton("Baixar Log Completo")
        self.download_log_btn.clicked.connect(self.salvar_log)

        self.main_content_layout.addWidget(QLabel("Status da Execução:"))
        self.main_content_layout.addWidget(self.status_output)
        self.main_content_layout.addWidget(self.download_log_btn)
        
        self.campos_por_banco = {
            "PostgreSQL": [
                ("URL:", "Ex: localhost"),
                ("Porta:", "Ex: 5432"),
                ("Usuário:", "Ex: postgres"),
                ("Senha:", "Senha"),
                ("Nome do Banco:", "Ex: postgres")
            ],
            "Oracle": [
                ("URL:", "Ex: localhost"),
                ("Porta:", "Ex: 1521"),
                ("Usuário:", "Ex: system"),
                ("Senha:", "Senha"),
                ("SID/Service Name:", "Ex: ORCL")
            ],
            "SQL Server": [
                ("URL:", "Ex: localhost"),
                ("Porta:", "Ex: 1433"),
                ("Usuário:", "Ex: sa"),
                ("Senha:", "Senha"),
                ("Nome do Banco:", "Ex: master")
            ]
        }

        self.erp = ""
        self.banco = ""
        self.cliente = ""
        self.ip_interno = ""
        self.porta_tomcat = ""
        self.campos_conexao_widgets = {}

        self.atualizar_campos_conexao(0)

    def carregar_configuracoes_salvas(self):
        if 'CONNECTION' in self.config:
            banco_salvo = self.config.get('DEFAULT', 'banco', fallback='PostgreSQL')
            banco_index = self.banco_combo.findText(banco_salvo)
            if banco_index != -1: self.banco_combo.setCurrentIndex(banco_index)
            
            for label_text, widget in self.campos_conexao_widgets.items():
                config_key = label_text.replace(":", "").strip().lower().replace(" ", "_")
                widget.setText(self.config.get('CONNECTION', config_key, fallback=''))

    def salvar_configuracoes(self):
        self.config['DEFAULT']['banco'] = self.banco_combo.currentText()
        self.config['CONNECTION'] = {}
        for label_text, widget in self.campos_conexao_widgets.items():
            config_key = label_text.replace(":", "").strip().lower().replace(" ", "_")
            self.config['CONNECTION'][config_key] = widget.text()

        with open(os.path.join(BASE_DIR, 'config.ini'), 'w') as configfile:
            self.config.write(configfile)

    def configurar_tela(self, dados_iniciais):
        # Recebe os dados da tela inicial
        self.erp = dados_iniciais["erp"]
        self.cliente = dados_iniciais["cliente"]
        self.ip_interno = dados_iniciais["ip_interno"]
        self.porta_tomcat = dados_iniciais["porta_tomcat"]
        self.extras = dados_iniciais.get("extras", {})

        self.status_output.clear()
        self.log = ""
        self.executar_btn.setEnabled(False)
        
        if 'DEFAULT' in self.config:
            banco_salvo = self.config.get('DEFAULT', 'banco', fallback='PostgreSQL')
            banco_index = self.banco_combo.findText(banco_salvo)
            if banco_index != -1: self.banco_combo.setCurrentIndex(banco_index)
            else: self.banco_combo.setCurrentIndex(0)
        else:
            self.banco_combo.setCurrentIndex(0)

        self.atualizar_campos_conexao(self.banco_combo.currentIndex())
        self.carregar_configuracoes_salvas()
        
    def atualizar_campos_conexao(self, index):
        while self.form_layout.rowCount() > self.conexao_placeholder_row:
            self.form_layout.removeRow(self.form_layout.rowCount() - 1)

        self.campos_conexao_widgets.clear()
        
        banco_selecionado = self.banco_combo.currentText()
        campos = self.campos_por_banco.get(banco_selecionado, [])
        
        for label_text, placeholder in campos:
            widget = QLineEdit(placeholderText=placeholder)
            if "Senha" in label_text:
                widget.setEchoMode(QLineEdit.Password)
                toggle_btn = QPushButton("Mostrar")
                toggle_btn.setCheckable(True)
                toggle_btn.setFixedSize(QSize(80, 35))
                toggle_btn.clicked.connect(lambda checked, w=widget, b=toggle_btn: self.toggle_visibilidade_senha(checked, w, b))
                senha_layout = QHBoxLayout()
                senha_layout.addWidget(widget)
                senha_layout.addWidget(toggle_btn)
                self.form_layout.addRow(label_text, senha_layout)
            else:
                self.form_layout.addRow(label_text, widget)
            self.campos_conexao_widgets[label_text] = widget
            
        self.banco = banco_selecionado
        self.executar_btn.setEnabled(False)
        self.validar_btn.setEnabled(True)


    def toggle_visibilidade_senha(self, checked, senha_input, toggle_btn):
        if checked:
            senha_input.setEchoMode(QLineEdit.Normal)
            toggle_btn.setText("Ocultar")
        else:
            senha_input.setEchoMode(QLineEdit.Password)
            toggle_btn.setText("Mostrar")

    def validar_conexao(self):
        self.salvar_configuracoes()
        self.status_output.clear()
        self.log = ""
        self.executar_btn.setEnabled(False)
        
        url = self.campos_conexao_widgets.get("URL:", QLineEdit()).text()
        porta = self.campos_conexao_widgets.get("Porta:", QLineEdit()).text()
        usuario = self.campos_conexao_widgets.get("Usuário:", QLineEdit()).text()
        senha = self.campos_conexao_widgets.get("Senha:", QLineEdit()).text()
        dbname = self.campos_conexao_widgets.get("Nome do Banco:", QLineEdit()).text() or \
                     self.campos_conexao_widgets.get("SID/Service Name:", QLineEdit()).text()

        if not all([url, porta, usuario, senha]):
            self.status_output.append("❌ Erro: Por favor, preencha todos os campos de conexão.")
            return

        self.status_output.append("ℹ️ Tentando conectar...")
        self.validar_btn.setEnabled(False)
        
        self.db_manager = DatabaseManager(
            self.banco,
            url,
            porta,
            usuario,
            senha,
            dbname
        )

        success, error_log = self.db_manager.abrir_conexao()
        if success:
            self.status_output.append("✅ Conexão estabelecida com sucesso.")
            self.executar_btn.setEnabled(True)
        else:
            self.status_output.append(f"❌ Erro na conexão. Verifique os dados e tente novamente.")
            self.log += error_log

        self.db_manager.fechar_conexao()
        self.validar_btn.setEnabled(True)

    def executar_script(self):
        self.salvar_configuracoes()
        self.status_output.clear()
        self.log = ""
        self.validar_btn.setEnabled(False)
        self.executar_btn.setEnabled(False)

        # Conteúdo dos scripts separados em duas fases. O bloco padrão
        # contém o confPadrao e scripts gerados automaticamente. O bloco
        # específico do ERP é executado após as tabelas temporárias quando
        # necessário.
        conteudo_padrao = ""
        conteudo_erp = ""

        # Carrega o script padrão do banco (executado primeiro)
        banco_folder = self.banco.lower().replace(" ", "")
        arquivo_padrao_map = {
            "PostgreSQL": "confPadraoPostgres.sql",
            "Oracle": "confPadraoOracle.sql",
            "SQL Server": "confPadraoSqlServer.sql"
        }
        arquivo_padrao = arquivo_padrao_map.get(self.banco)
        if arquivo_padrao:
            caminho_conf_banco = os.path.join(BASE_DIR, "scripts", banco_folder, arquivo_padrao)
            if os.path.exists(caminho_conf_banco):
                self.status_output.append(f"ℹ️ Lendo script padrão do banco: {caminho_conf_banco}")
                try:
                    with open(caminho_conf_banco, 'r', encoding='utf-8') as f:
                        conteudo_padrao += f.read() + "\n"
                except Exception:
                    self.status_output.append(f"❌ Erro ao ler o script padrão do banco: {caminho_conf_banco}")
                    self.log += traceback.format_exc()
                    self.executar_btn.setEnabled(True)
                    self.validar_btn.setEnabled(True)
                    return
            else:
                self.status_output.append(f"⚠️ Aviso: Script padrão do banco não encontrado: {caminho_conf_banco}")

        # GERAÇÃO DO SCRIPT PADRÃO (SEMPRE RODA PRIMEIRO)
        self.status_output.append("ℹ️ Gerando scripts padrão a partir dos dados da tela inicial...")
        
        # Script 1: Atualiza o nome do cliente
        script_cliente = f"UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = '{self.cliente}' WHERE CDPARAMETRO = '643';\n"
        script_cliente += f"UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = '{self.cliente}' WHERE CDPARAMETRO = '833';\n"
        conteudo_padrao += script_cliente + "\n"
        
        # Script 2: Atualiza o IP e a Porta do Tomcat
        url_tomcat_dados = f"http://{self.ip_interno}:{self.porta_tomcat}/wmwdados"
        url_tomcat_vendas = f"http://{self.ip_interno}:{self.porta_tomcat}/wmwvendas"
        script_ip_porta = f"UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = '{url_tomcat_dados}' WHERE CDPARAMETRO = '554';\n"
        script_ip_porta += f"UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO = '{url_tomcat_vendas}' WHERE CDPARAMETRO = '530';\n"
        conteudo_padrao += script_ip_porta + "\n"

        # Script 3: Adiciona a conexão PDA
        script_conexao_pda = (
            f"INSERT INTO TBLVWCONEXAOPDA (cdconexao,dsconexao,dsurlwebservice,flconexaodiscada,"
            f"fldefault,flativo) values('1','Local','http://{self.ip_interno}:{self.porta_tomcat}/wmwdados','N','S','S');\n"
        )
        conteudo_padrao += script_conexao_pda + "\n"
        
        self.status_output.append("✅ Scripts padrão gerados com sucesso.")
        
        # TENTA CARREGAR O SCRIPT ESPECÍFICO DO ARQUIVO
        erp = self.erp.lower().replace(" ", "")
        caminho_script_arquivo = os.path.join(BASE_DIR, "scripts", banco_folder, f"{erp}.sql")

        if os.path.exists(caminho_script_arquivo):
            self.status_output.append(f"ℹ️ Lendo script específico do ERP: {caminho_script_arquivo}")
            try:
                with open(caminho_script_arquivo, 'r', encoding='utf-8') as f:
                    conteudo_erp += f.read()
            except Exception as e:
                self.status_output.append(f"❌ Erro ao ler o arquivo de script: {caminho_script_arquivo}")
                self.log += traceback.format_exc()
                self.executar_btn.setEnabled(True)
                self.validar_btn.setEnabled(True)
                return
        else:
            self.status_output.append(f"⚠️ Aviso: Script de arquivo para '{self.erp}' não encontrado. Executando apenas os scripts padrão.")

        # Carrega o script de parametrizações que deve ser executado ao final
        caminho_param = os.path.join(BASE_DIR, "scripts", "parametrizacoes.sql")
        if os.path.exists(caminho_param):
            self.status_output.append(f"ℹ️ Lendo script de parametrizações: {caminho_param}")
            try:
                with open(caminho_param, 'r', encoding='utf-8') as f:
                    conteudo_erp += f"\n{f.read()}"
            except Exception:
                self.status_output.append(f"❌ Erro ao ler o arquivo de parametrizações: {caminho_param}")
                self.log += traceback.format_exc()
                self.executar_btn.setEnabled(True)
                self.validar_btn.setEnabled(True)
                return
        else:
            self.status_output.append("⚠️ Aviso: Arquivo de parametrizações não encontrado. Prosseguindo sem ele.")

        # Scripts adicionais para ERP específicos
        if self.erp == "Senior":
            url_senior = self.extras.get("Url Senior", "").strip()
            usuario_senior = self.extras.get("Usuario Senior", "").strip()
            senha_senior = self.extras.get("Senha Senior", "").strip()

            if url_senior:
                script_url_senior = (
                    f"UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='http://{url_senior}/g5-senior-services' WHERE CDPARAMETRO='1216';\n"
                    f"UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='http://{url_senior}/g5-senior-services/sapiens_Synccom_senior_g5_co_mcm_ven_pedidos' WHERE CDPARAMETRO='517';\n"
                )
                conteudo_erp += script_url_senior + "\n"
                self.log += script_url_senior

            if usuario_senior or senha_senior:
                usuario_senior_sql = usuario_senior.replace("'", "''")
                senha_senior_sql = senha_senior.replace("'", "''")
                json_value = (
                    f'{{"paramUser":"N","valueUser":"N","paramPassword":"N","valuePassword":"N","othersParams":"user:{usuario_senior_sql}|password:{senha_senior_sql}|encryption:0"}}'
                )
                script_auth_senior = (
                    f"UPDATE TBWMWVALORPARAMETRO SET VLPARAMETRO='{json_value}' WHERE CDPARAMETRO='524';\n"
                )
                conteudo_erp += script_auth_senior + "\n"
                self.log += script_auth_senior

        # Se não há scripts para executar, retorna
        if not (conteudo_padrao.strip() or conteudo_erp.strip()):
            self.status_output.append("❌ Erro: Não há scripts para executar.")
            self.executar_btn.setEnabled(True)
            self.validar_btn.setEnabled(True)
            return

        # Continua com a lógica de execução
        url = self.campos_conexao_widgets.get("URL:", QLineEdit()).text()
        porta = self.campos_conexao_widgets.get("Porta:", QLineEdit()).text()
        usuario = self.campos_conexao_widgets.get("Usuário:", QLineEdit()).text()
        senha = self.campos_conexao_widgets.get("Senha:", QLineEdit()).text()
        dbname = self.campos_conexao_widgets.get("Nome do Banco:", QLineEdit()).text() or \
                     self.campos_conexao_widgets.get("SID/Service Name:", QLineEdit()).text()

        self.db_manager = DatabaseManager(
            self.banco,
            url,
            porta,
            usuario,
            senha,
            dbname
        )

        success, error_log = self.db_manager.abrir_conexao()
        if not success:
            self.status_output.append("❌ Falha na conexão para executar script. Verifique os dados.")
            self.log += error_log
            self.executar_btn.setEnabled(True)
            self.validar_btn.setEnabled(True)
            return

        self.status_output.append("ℹ️ Conexão estabelecida. Iniciando execução dos scripts...")
        QApplication.processEvents()

        if self.banco == "PostgreSQL" and self.erp.strip().lower() == "wmw":
            if conteudo_padrao.strip():
                self.status_output.append("ℹ️ Executando scripts padrão...")
                success_padrao, error_padrao = self.db_manager.executar_bloco(conteudo_padrao)
                if success_padrao:
                    self.status_output.append("✅ Scripts padrão executados.")
                else:
                    self.status_output.append(f"❌ Erro na execução do script: {str(error_padrao)}")
                    self.log += f"Erro na execução do script:\n{conteudo_padrao}\n{error_padrao}\n"
                    self.db_manager.fechar_conexao()
                    self.status_output.append("✅ Execução dos scripts finalizada.")
                    self.executar_btn.setEnabled(True)
                    self.validar_btn.setEnabled(True)
                    return

            cursor = self.db_manager.conn.cursor()
            try:
                self.status_output.append("ℹ️ Gerando tabelas temporárias para WMW...")
                cursor.execute(
                    """
                    SELECT DISTINCT
                           format(
                               'create table %I.%I as select * from %I.%I where 1 = 2;',
                               table_schema,
                               replace(table_name, 'tblvw', 'tmpint'),
                               table_schema,
                               table_name
                           )
                    FROM information_schema.tables
                    WHERE lower(table_name) LIKE 'tblvw%'
                      AND table_schema NOT IN ('information_schema','pg_catalog');
                    """
                )
                for (create_sql,) in cursor.fetchall():
                    self.log += f"{create_sql}\n"
                    try:
                        cursor.execute(create_sql)
                        self.db_manager.conn.commit()
                        self.status_output.append(f"✅ {create_sql}")
                    except Exception:
                        self.db_manager.conn.rollback()
                        err = traceback.format_exc()
                        self.status_output.append(f"❌ Erro ao executar: {create_sql}")
                        self.log += f"Erro ao executar: {create_sql}\n{err}\n"

                self.status_output.append("ℹ️ Gerando PKs para as tabelas temporárias...")
                cursor.execute(
                    """
                    SELECT format(
                               'ALTER TABLE %I.%I ADD CONSTRAINT %I PRIMARY KEY (%s);',
                               tc.table_schema,
                               replace(tc.table_name, 'tblvw', 'tmpint'),
                               replace(tc.constraint_name, 'tblvw', 'tmpint'),
                               string_agg(kcu.column_name, ', ')
                           ) AS pk_script
                    FROM information_schema.table_constraints tc
                    JOIN information_schema.key_column_usage kcu
                         ON tc.constraint_name = kcu.constraint_name
                         AND tc.table_schema = kcu.table_schema
                    WHERE tc.constraint_type = 'PRIMARY KEY'
                      AND lower(tc.table_name) LIKE 'tblvw%'
                      AND tc.table_schema NOT IN ('information_schema','pg_catalog')
                    GROUP BY tc.table_schema, tc.table_name, tc.constraint_name
                    ORDER BY tc.table_schema, tc.table_name;
                    """
                )
                for (pk_sql,) in cursor.fetchall():
                    self.log += f"{pk_sql}\n"
                    try:
                        cursor.execute(pk_sql)
                        self.db_manager.conn.commit()
                        self.status_output.append(f"✅ {pk_sql}")
                    except Exception:
                        self.db_manager.conn.rollback()
                        err = traceback.format_exc()
                        self.status_output.append(f"❌ Erro ao executar: {pk_sql}")
                        self.log += f"Erro ao executar: {pk_sql}\n{err}\n"
            except Exception:
                self.db_manager.conn.rollback()
                self.status_output.append("❌ Erro ao preparar tabelas temporárias para WMW.")
                self.log += traceback.format_exc()
            finally:
                cursor.close()

            if conteudo_erp.strip():
                self.status_output.append("ℹ️ Executando script específico e parametrizações...")
                success_bloco, error_bloco = self.db_manager.executar_bloco(conteudo_erp)
            else:
                success_bloco, error_bloco = True, None
            conteudo_log = conteudo_erp
        else:
            conteudo_total = conteudo_padrao + conteudo_erp
            success_bloco, error_bloco = self.db_manager.executar_bloco(conteudo_total)
            conteudo_log = conteudo_total

        if success_bloco:
            self.status_output.append("✅ Script executado com sucesso.")
            try:
                icons_dir = os.path.join(BASE_DIR, "icons")
                inseridos = self.db_manager.inserir_imagens_marcadores(icons_dir)
                if inseridos:
                    self.status_output.append("✅ Imagens dos marcadores inseridas.")
                else:
                    self.status_output.append("⚠️ Nenhuma imagem de marcador encontrada; etapa ignorada.")
            except Exception:
                self.status_output.append("❌ Erro ao inserir imagens dos marcadores.")
                self.log += traceback.format_exc()
        else:
            self.status_output.append(f"❌ Erro na execução do script: {str(error_bloco)}")
            self.log += f"Erro na execução do script:\n{conteudo_log}\n{error_bloco}\n"

        self.db_manager.fechar_conexao()
        self.status_output.append("✅ Execução dos scripts finalizada.")
        self.executar_btn.setEnabled(True)
        self.validar_btn.setEnabled(True)

    def salvar_log(self):
        if not self.log and self.status_output.toPlainText():
            self.log = "### Resumo da Execução ###\n" + self.status_output.toPlainText() + "\n\n" + self.log

        if not self.log:
            QMessageBox.information(self, "Salvar Log", "Nenhum erro ou log de execução para salvar.")
            return

        nome_arquivo = f"log_{datetime.datetime.now():%Y%m%d_%H%M%S}.txt"
        nome_arquivo, _ = QFileDialog.getSaveFileName(self, "Salvar Log", nome_arquivo, "Text Files (*.txt)")

        if nome_arquivo:
            try:
                with open(nome_arquivo, "w", encoding="utf-8") as f:
                    f.write(self.log)
                QMessageBox.information(self, "Salvar Log", f"Log salvo com sucesso em:\n{nome_arquivo}")
            except Exception as e:
                QMessageBox.critical(self, "Erro ao Salvar", f"Não foi possível salvar o arquivo:\n{str(e)}")

class MainApp(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Executor de Scripts por ERP")
        self.setFixedSize(700, 650)

        self.stacked = QStackedWidget()
        self.tela_inicial = TelaInicial(self.avancar_para_conexao)
        self.tela_conexao = TelaConexao(self.voltar_para_inicial)

        self.stacked.addWidget(self.tela_inicial)
        self.stacked.addWidget(self.tela_conexao)

        layout = QVBoxLayout()
        layout.addWidget(self.stacked)
        self.setLayout(layout)

    def avancar_para_conexao(self):
        dados = self.tela_inicial.get_dados()
        self.tela_conexao.configurar_tela(dados) # Passa o dicionário completo de dados
        self.stacked.setCurrentWidget(self.tela_conexao)

    def voltar_para_inicial(self):
        self.stacked.setCurrentWidget(self.tela_inicial)

if __name__ == "__main__":
    app = QApplication(sys.argv)
    
    app.setStyle("Fusion")
    
    dark_palette = QPalette()
    dark_palette.setColor(QPalette.Window, QColor(43, 43, 43))
    dark_palette.setColor(QPalette.WindowText, QColor(240, 240, 240))
    dark_palette.setColor(QPalette.Base, QColor(60, 60, 60))
    dark_palette.setColor(QPalette.AlternateBase, QColor(50, 50, 50))
    dark_palette.setColor(QPalette.ToolTipBase, QColor(240, 240, 240))
    dark_palette.setColor(QPalette.ToolTipText, QColor(43, 43, 43))
    dark_palette.setColor(QPalette.Text, QColor(240, 240, 240))
    dark_palette.setColor(QPalette.Button, QColor(60, 60, 60))
    dark_palette.setColor(QPalette.ButtonText, QColor(240, 240, 240))
    dark_palette.setColor(QPalette.BrightText, QColor(255, 0, 0))
    dark_palette.setColor(QPalette.Link, QColor(42, 130, 218))
    dark_palette.setColor(QPalette.Highlight, QColor(0, 120, 215))
    dark_palette.setColor(QPalette.HighlightedText, QColor(0, 0, 0))

    app.setPalette(dark_palette)
    
    window = MainApp()
    window.show()
    sys.exit(app.exec())
