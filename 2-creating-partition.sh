#!/bin/bash

source ./colors.sh

export caminho_do_dispositivo="/dev"

# Comando lsblk mostra discos e partiçoes
lsblk

echo -e "\n${cyan}Escolha o disco para particionar${end}\n"

read -p "Digite: " disco

caminho="${caminho_do_dispositivo}${disco}"

echo -e "$caminho"

case $disco in
	"sda")
		cfdisk $caminho
		;;
	"sdb")
		cfdisk $caminho
		;;
	"sdc")
		cfdisk $caminho
		;;
	"vda")
		cfdisk $caminho
		;;
	"vdb")
		cfdisk $caminho
		;;
		*)
		echo -e "\nOpçoes válidas. [ sda | sdb | sdc | vda | vdb \n"
		;;

esac 


		