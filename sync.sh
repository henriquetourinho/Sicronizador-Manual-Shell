#!/bin/bash

# Solicita o número de pastas a serem sincronizadas
read -p "Quantas pastas locais você deseja sincronizar? " num_pastas

# Loop para cada pasta
for i in $(seq 1 $num_pastas); do
  # Solicita o caminho da pasta local
  read -p "Digite o caminho da pasta local $i: " pasta_local

  # Valida se o caminho da pasta local foi fornecido
  while [[ -z "$pasta_local" ]]; do
    read -p "Caminho da pasta local inválido. Digite o caminho da pasta local $i: " pasta_local
  done

  # Solicita o destino da pasta
  read -p "Digite o destino para a pasta $i (ex: usuario@servidor:/caminho/para/pasta): " destino

  # Valida se o destino foi fornecido
  while [[ -z "$destino" ]]; do
    read -p "Destino inválido. Digite o destino para a pasta $i (ex: usuario@servidor:/caminho/para/pasta): " destino
  done

  echo "Sincronizando $pasta_local com $destino..."
  
  # Executa o rsync e verifica se houve erro
  if ! rsync -avz "$pasta_local" "$destino"; then
    echo "Erro ao sincronizar $pasta_local com $destino."
  else
    # Solicita confirmação para exclusão da pasta local após o backup
    read -p "Deseja excluir a pasta local '$pasta_local' após o backup? (s/n) " excluir

    # Exclui a pasta local se a opção for confirmada
    if [[ $excluir == "s" ]]; then
      echo "Excluindo pasta local '$pasta_local'..."
      rm -rf "$pasta_local"
    fi
  fi

done

echo "Backup concluído!"
