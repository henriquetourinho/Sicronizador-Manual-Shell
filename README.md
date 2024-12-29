# SafeSync

**SafeSync** é um script de backup e sincronização de pastas simples, eficiente e seguro, escrito em Shell Script. Ele permite que você sincronize múltiplas pastas locais com um ou mais destinos externos, como servidores ou dispositivos de armazenamento.

## Funcionalidades

  * **Sincronização de múltiplas pastas:** Escolha quais pastas locais deseja proteger e sincronize-as com diferentes destinos.
  * **Backup incremental:** Utiliza `rsync` para transferir apenas as alterações nos arquivos, economizando tempo e banda larga.
  * **Agendamento:** Configure o SafeSync para executar backups automaticamente em intervalos regulares usando o `cron` ou outra ferramenta de agendamento (não incluso no script).
  * **Exclusão de arquivos originais:** Após a sincronização, você pode optar por excluir os arquivos originais da pasta local para liberar espaço em disco.
  * **Interface amigável:**  Interface de linha de comando intuitiva e fácil de usar.

## Como usar

1.  **Clone o repositório:**

    ```bash
    git clone https://github.com/henriquetourinho/SafeSync.git
    ```

2.  **Execute o script:**

    ```bash
    cd SafeSync
    chmod +x sync.sh
    ./sync.sh
    ```

3.  **Siga as instruções:** O script irá perguntar quantas pastas você deseja sincronizar, o caminho de cada pasta local e o destino correspondente.

4.  **Configure o agendamento (opcional):** Utilize o `cron` ou outra ferramenta de agendamento para automatizar a execução do script.

## Exemplo de uso

```
./sync.sh
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

  * Certifique-se de ter o `rsync` instalado em seu sistema.
  * Substitua os caminhos e destinos de exemplo pelos seus próprios.
  * Tenha cuidado ao usar a opção de exclusão de arquivos. Certifique-se de que o backup foi concluído com sucesso antes de excluir os arquivos locais.

## Contribuições

Contribuições são bem-vindas\! Sinta-se à vontade para abrir issues ou pull requests.

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](https://www.google.com/url?sa=E&source=gmail&q=LICENSE) para detalhes.

