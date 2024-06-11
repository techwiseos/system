#!/bin/bash
source ./colors.sh
export caminho_do_dispositivo="/dev/"
#Comando Isbik mostrar discos e partições
lsblk
echo -e "\n${cyan} Escolha a partição para formatar. Exemplo de partição: sda2${end}\n"
echo -e "${cyan} Se partição não existir, por favor, crie as partições com o script 2-creating-partition.${end}\n"
read -p "Digite:
particao
# Pega caminho da partição /dev/sda2, /dev/vda2 e etc.
caminho_da_particao="${caminho_do_dispositivo} ${particao}"
# Filtra partição existente cmd_particao= lsblk | grep ${particao)`
# Se partição existir me traga caminho/partição
if [[ -n "$cmd_particao" ]]; then
echo -e "$cmd_particao\n"
echo -e "$caminho_da_particao\n"
echo -e "\nDigite o tipo de partição que você escolheu para ${cyan}${caminho_da_particao}${end} \n" echo -e "Você pode escolher vários tipos como: $(cyan} ext4 | ntfs I fat32 I vfat I swap 1${end}\n"
read -p "Tipo: " tipo

# Verifica se tipo está vazio
if [[ -z "$tipo" ]]; then
echo -e "Tipo inválido! Exemplo dos tipos: ${cyan} [ ext4 ❘ ext2 | ntfs | fat32 | vfat I swap ]${end}\n" exit 1
# Verificar se tipo não está vazio
elif [[ -n "$tipo" ]]; then
fi
#echo -e "Tem coisa ain'
if [[ "$tipo" = "ext4" ]]; then
echo -e "\n${green_light)mkfs -v -t "$tipo" ${caminho_da_particao}${end}\n"
mkfs -v -t "$tipo" "$caminho_da_particao'
elif [[ "$tipo" = "ext2" ]]; then
echo -e "\n${green_light}mkfs -v -t "$tipo" ${caminho_da_particao}${end}\n" mkfs -v -t "$tipo" "$caminho_da_particao'
elif [[ "$tipo" = "fat32" ]]; then
echo -e "\n${green_light}mkfs.fat -v -F32 ${caminho_da_particao}${end}\n" mkfs.fat -v -F32 "$caminho_da_particao"
elif [[ "$tipo" = "vfat" ]]; then
echo -e "\n${green_light)mkfs.vfat -v ${caminho_da_particao} ${end}\n"
mkfs.vfat -v "$caminho_da_particao"
elif [[ "$tipo" = "swap" ]]; then
fi
echo -e "\n${green_light}mkswap ${caminho_da_particao}${end}\n"
mkswap "$caminho_da_particao'
exit 1
else
echo -e "\n${red}Partição não existe${end}\n"
echo -e "\n${cyan) Se partição não existir, porfavor, crie as partições com o script 2-creating-partition.${end}\n"

fi
