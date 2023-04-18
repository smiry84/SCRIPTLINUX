#!/bin/bash
# Auntor: Veronica Miranda Alcazar
# Fecha: 18/04/2023

while true
do
	clear
	echo "MENU"
	echo "----"
	echo "(1) CREAR EL CONTROL DE VERSION"
	echo "(2) CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD"
	echo "(3) REALIZAR PRIMER COMMIT"
	echo "(4) REALIZAR COMMIT SOBRE EL ULTIMO"
	echo "(5) CONFIGURAR EL REPOSITORIO REMOTO"
	echo "(6) CAMBIAR EL NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
	echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
	echo "(8) SALIR"

	echo
	# EL PARAMETRO -n ES PARA PODER LEER DESDE EL TECLADO
	echo -n "ESCRIBA SU OPCION?: "
	read opcion 

	case $opcion in
	1)
	clear
	echo "(1) CREAR EL CONTROL DE VERSION"
	echo "-------------------------------"
	git init
	read -rsp $'\nPress enter to continue...'
	;;
	2)
	clear
	echo "(2) CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD"
	echo "---------------------------------------------"
	git config user.name "smiry84"
	git config user.email "vma.smiry84@gmail.com"
	git config user.password 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
	read -rsp $'\nPress enter to continue...'
	;;
	3)
	clear
	echo "(3) REALIZAR PRIMER COMMIT"
	echo "--------------------------"
	git add .
	git commit -m "SNASHOPT 1"
	read -rsp $'\nPress enter to continue...'
	;;
	4)
	clear
	echo "(4) REALIZAR COMMIT SOBRE EL ULTIMO"
	echo "-----------------------------------"
	git add .
	git commit --amend -m "SNASHOPT 1"
	read -rsp $'\nPress enter to continue...'
	;;
	5)
	clear
	echo "(5) CONFIGURAR EL REPOSITORIO REMOTO"
	echo "------------------------------------"
	git remote add origin "https://github.com/smiry84/SCRIPTLINUX.git"
	read -rsp $'\nPress enter to continue...'
	;;
	6)
	clear
	echo "(6) CAMBIAR EL NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
	echo "-----------------------------------------------------------"
	git branch -M main
	read -rsp $'\nPress enter to continue...'
	;;
	7)
	clear
	echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
	echo "----------------------------------------"
	git push -u -f origin main 
	read -rsp $'\nPress enter to continue...'
	;;
	8)
	clear
	echo "GRACIAS POR SU VISITA"
	echo "---------------------"
	read -rsp $'\nPress enter to continue...'
	exit 0
	;;
	*)
	clear
	echo "OPCION INCORRECTA"
	read -rsp $'\nPress enter to continue...'
	;;
	esac
done
