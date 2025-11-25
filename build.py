import os
import sys
import shutil
import subprocess

def build():
    # Nome do executável
    app_name = "AutoScript"
    main_script = "main.py"

    # Verifica se o PyInstaller está instalado
    try:
        import PyInstaller
    except ImportError:
        print("PyInstaller não encontrado. Instalando...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", "pyinstaller"])

    # Limpa pastas de build anteriores
    if os.path.exists("build"):
        shutil.rmtree("build")
    if os.path.exists("dist"):
        shutil.rmtree("dist")

    # Define o separador de caminho para o --add-data (ponto e vírgula no Windows)
    sep = ";" if os.name == 'nt' else ":"

    # Recursos a serem embutidos (scripts e icons)
    # Formato: "origem;destino"
    add_data = [
        f"scripts{sep}scripts",
        f"icons{sep}icons"
    ]

    # Comando do PyInstaller
    cmd = [
        sys.executable, "-m", "PyInstaller",
        "--noconsole",
        "--onefile",
        "--clean",
        "--name", app_name,
        main_script
    ]

    # Adiciona os recursos ao comando
    for data in add_data:
        cmd.extend(["--add-data", data])

    print(f"Iniciando build: {' '.join(cmd)}")
    subprocess.check_call(cmd)

    # Pós-build: Copiar apenas o config.ini para junto do executável
    # Scripts e Icons já estão DENTRO do exe.
    dist_dir = "dist"
    
    # Arquivos externos (apenas config.ini)
    config_file = "config.ini"
    
    print("Copiando arquivos de configuração...")
    src = os.path.abspath(config_file)
    dst = os.path.join(dist_dir, config_file)
    
    if os.path.exists(src):
        shutil.copy2(src, dst)
        print(f"Copiado: {config_file}")
    else:
        # Se não existir, cria um vazio para evitar erros
        with open(dst, 'w') as f:
            f.write("[DEFAULT]\n")
        print(f"Criado arquivo padrão: {config_file}")

    print("\nBuild concluído com sucesso!")
    print(f"O executável está na pasta '{dist_dir}'.")
    print("Scripts e ícones foram embutidos no executável.")
    print("Para atualizar os scripts, edite-os na pasta do projeto e rode este build novamente.")

if __name__ == "__main__":
    build()
