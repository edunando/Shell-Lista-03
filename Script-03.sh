#!/bin/bash

read -p "Digite um endereço IP: " ip
echo ""
#Vou utilizar o IFS para realizar a separação dos campos.
OLD_IFS=$IFS
IFS='.'

#Separação de octetos em argumentos
set - $ip

#Criação de uma função utilizando o BC para fazer a conversão da base.
converterBase() {
        echo "obase=2; $1" | bc
}

primeiro_octeto=`converterBase $1`
segundo_octeto=`converterBase $2`
tercerio_octeto=`converterBase $3`
quarto_octeto=`converterBase $4`

#Percorrer os octetos separados em argumentos
cont=0
for i in $primeiro_octeto $segundo_octeto $tercerio_octeto $quarto_octeto
do
	adc=$(( cont+=1 ))
	#Com o printf %08d consigo Substituir com zeros a esquerda até atingir 8 caracteres.			
	if [ $cont == '1' ];then
		 printf "Primeiro Octeto: %08d\n" $i			
	elif [ $cont == '2' ];then
		printf "Segundo Octeto: %08d\n" $i
	elif [ $cont == '3' ];then
		printf "Terceiro Octeto: %08d\n" $i
	elif [ $cont == '4' ];then
		printf "Quarto Octeto: %08d\n" $i
	fi
done

