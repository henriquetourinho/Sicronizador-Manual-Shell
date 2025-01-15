# Sicronizador Manual Shell

**SafeSync** é um script de backup e sincronização de pastas simples, eficiente e seguro, escrito em Shell Script. Ele permite que você sincronize múltiplas pastas locais com um ou mais destinos externos, como servidores ou dispositivos de armazenamento.

## Funcionalidades

  * **Sincronização de múltiplas pastas:** Escolha quais pastas locais deseja proteger e sincronize-as com diferentes destinos.
  * **Backup incremental:** Utiliza `rsync` para transferir apenas as alterações nos arquivos, economizando tempo e banda larga.
  * **Exclusão de arquivos originais:** Após a sincronização, você pode optar por excluir os arquivos originais da pasta local para liberar espaço em disco.
  * **Interface amigável:**  Interface de linha de comando intuitiva e fácil de usar.

## Requisitos

  * **Bash:** Um interpretador de comandos Bash (geralmente já incluso em sistemas Linux/Unix).
  * **rsync:**  Utilitário para sincronização de arquivos.

## Instalação dos Requisitos

### Linux

A maioria das distribuições Linux já vem com o Bash e o `rsync` instalados por padrão. Caso necessite instalar, utilize o gerenciador de pacotes da sua distribuição.

**Exemplos:**

  * **Debian/Ubuntu:**

    ```bash
    sudo apt-get update
    sudo apt-get install rsync
    ```

  * **Fedora/CentOS:**

    ```bash
    sudo dnf update
    sudo dnf install rsync
    ```

  * **Arch Linux:**

    ```bash
    sudo pacman -Syu rsync
    ```

### macOS

O macOS já inclui o Bash por padrão. Para instalar o `rsync`, você pode usar o Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install rsync
```

### Windows

Você pode utilizar o SafeSync no Windows através do WSL (Windows Subsystem for Linux).

1.  **Instale o WSL:** Siga as instruções no site da Microsoft: [Instalar o WSL](https://www.google.com/url?sa=E&source=gmail&q=https://learn.microsoft.com/pt-br/windows/wsl/install)

2.  **Instale uma distribuição Linux:**  Escolha uma distribuição Linux na Microsoft Store, como Ubuntu ou Debian.

3.  **Instale o `rsync` dentro da distribuição Linux:** Utilize o gerenciador de pacotes da distribuição, como `apt` ou `apt-get`.

## Como usar

1.  **Clone o repositório:**

    ```bash
    git clone https://github.com/henriquetourinho/SafeSicronizador-Manual-ShellSync.git
    ```

2.  **Execute o script:**

    ```bash
    cd SafeSync
    chmod +x sicronizadormanualshell.sh
    ./safesync.sh
    ```

3.  **Siga as instruções:** O script irá perguntar quantas pastas você deseja sincronizar, o caminho de cada pasta local e o destino correspondente.

4.  **Configure o agendamento (opcional):** Utilize o `cron` ou outra ferramenta de agendamento para automatizar a execução do script.

## Exemplo de uso

```
./safesync.sh
Quantas pastas locais você deseja sincronizar? 2
Digite o caminho da pasta local 1: /home/usuario/Documentos
Digite o destino para a pasta 1 (ex: usuario@servidor:/caminho/para/pasta): usuario@servidor:/backup/Documentos
Sincronizando /home/usuario/Documentos com usuario@servidor:/backup/Documentos...
Deseja excluir a pasta local '/home/usuario/Documentos' após o backup? (s/n) n
Digite o caminho da pasta local 2: /home/usuario/Imagens
Digite o destino para a pasta 2 (ex: usuario@servidor:/caminho/para/pasta): /media/backup/Imagens
Sincronizando /home/usuario/Imagens com /media/backup/Imagens...
Deseja excluir a pasta local '/home/usuario/Imagens' após o backup? (s/n) s
Excluindo pasta local '/home/usuario/Imagens'...
Backup concluído!
```

## Observações

  * Certifique-se de ter permissão de escrita nos destinos de backup.
  * Tenha cuidado ao usar a opção de exclusão de arquivos. Certifique-se de que o backup foi concluído com sucesso antes de excluir os arquivos locais.

## Contribuições

Contribuições são bem-vindas\! Sinta-se à vontade para abrir issues ou pull requests.

