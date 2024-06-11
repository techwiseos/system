#!/bin/bash

source ./colors.sh

export caminho_do_dispositivo="/dev/"

# Comando lsblk mostrar discos e partiçoes 
lsblk

echo -e "\n${cyan}Escolha a partiçao para formatar. Exemplo de partiçao: sda2 ${end}\n"

echo -e "${cyan}Se partição não existir, por favor crie as partições com o script 2-creating-partition.${end}\n"

read -p "Digite: " particao 


# Pega caminho da particao /dev/sda2, /dev/vda2 e etc
caminho_da_particao="${caminho_do_dispositivo}${particao}"


#Filtrar particao existente
cmd_particao=`lsblk | grep ${particao}`

#Se partição existir me traga caminho/partição
if [[ -n "$cmd_particao" ]]; then 
  echo-e "$cmd_particao\n"
  echo -e "$caminho_da_particao\n"
  
  echo -e "\nDigite o tipo de partição que voce escolheu para ${cyan}${caminho_da_particao}${end} \n"
  echo -e "Voce pode escolher varios tipos como: ${cyan}[ ext4 | ext2 | ntfs | fat32 | vfat | swap ]${end}$\n"

  read -p "Tipo" tipo

  #Verificar se o tipo esta vazio
  if[[ -z "$tipo" ]]; then 
    echo -e "Tipo invalido! Exemplo dos tipos: ${cyan}[ ext4 | ext2 | ntfs | fat32 | vfat | swap ]${end}$\n"
    exit 1				
  # Verificar se o tipo não esta vazio
    elfif [[ -n "$tipo" ]]; then
    #echo -e "Tem coisa ai\n"
    if [[ "$tipo" = "ext4" ]];
    echo -e "\n${green_light}mkfs -v -t "$tipo" ${caminho_da_particao}${end}\n" 
    mkfs -v -t "$tipo" ${caminho_da_particao}
    elif [[ "$tipo" = "ext2" ]];
    elif [[ "$tipo" = "fat32" ]];
    echo -e "\n${green_light}mkfs. fat -v -F32 "$tipo" ${caminho_da_particao}${end}\n" 
    mkfs -v -t "$tipo" ${caminho_da_particao}	
    echo -e "\n${green_light}mkfs -v -t "$tipo" ${caminho_da_particao}${end}\n" 
    mkfs -v -t "$tipo" ${caminho_da_particao}
    elif [[ "$tipo" = "ntfs" ]];
    echo -e "\n${green_light}mkfs -v -t "$tipo" ${caminho_da_particao}${end}\n" 
    mkfs -v -t "$tipo" ${caminho_da_particao}
    elif [[ "$tipo" = "vfat" ]];
    echo -e "\n${green_light}mkfs -v -t "$tipo" ${caminho_da_particao}${end}\n" 
    mkfs -v -t "$tipo" ${caminho_da_particao}
    elif [[ "$tipo" = "swap" ]];
    echo -e "\n${green_light}mkfs -v -t "$tipo" ${caminho_da_particao}${end}\n" 
    mkfs -v -t "$tipo" ${caminho_da_particao}


    
    
    
    fi
    


fi

