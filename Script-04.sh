#!/bin/bash

#Inicio do laço

while true;do
	echo "AS NOITES FORAM FEITAS PARA DIZER COISAS QUE NÃO PODEM SER DITAS NO DIA SEGUINTE"
	echo ""
	echo 'a - Liste apenas os diretórios de uma pasta'
	echo 'b - Liste apenas os arquivos executáveis'
	echo 'c - Liste apenas os links simbólicos'
	echo 'x - Saia do script'

#Criação das condicionais
	read -p "Escolha uma alternativa: " escolha
	case $escolha in
		"a") read -p "Escolha a pasta para listar os diretórios: " dir
		     ls -al $dir | grep "^d"
		     ;;
		"b") read -p "Escolha a pasta para listar os arquivos executáveis: " arqv
			for i in $(ls $arqv);
			do
				if [ -x $i ];then
					echo $i
				fi
			done;;
		"c") read -p "Escolha a pasta para listar os links simbolicos: " arqv
			for i in $(ls $arqv);
			do
				if [ -h $arqv ];then
					echo $i
				fi
			done;;
			
		"x") 	clear
			echo "Adeus!" 
			break;;
	esac

done
