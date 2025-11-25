# Instruções para Build e Atualização

Este projeto gera um executável único (`.exe`) com todos os scripts e ícones embutidos.

## Como Gerar o Executável

Sempre que você atualizar os scripts na pasta do projeto, precisará gerar um novo executável.

1. Abra o terminal na pasta do projeto.
2. Execute o script de build:
   ```bash
   python build.py
   ```
   
Este script irá:
- Gerar o executável `AutoScript.exe` na pasta `dist`.
- Embutir automaticamente as pastas `scripts` e `icons` dentro do `.exe`.
- Copiar o `config.ini` para a pasta `dist` (para manter as configurações salvas).

## Resultado Final

Na pasta `dist`, você terá apenas:
- `AutoScript.exe` (Programa completo)
- `config.ini` (Configurações do usuário)

Não haverá pastas soltas de scripts ou ícones. Tudo está dentro do `.exe`.

## Como Atualizar

1. Edite os arquivos `.sql` na pasta `scripts` do projeto original.
2. Rode `python build.py` novamente.
3. Pegue o novo `AutoScript.exe` da pasta `dist` e substitua o antigo.
