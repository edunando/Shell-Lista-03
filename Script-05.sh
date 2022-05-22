#!/bin/bash

echo -e "As seguintes regras para criação de uma senha:\nPelo menos 5 caracteres, uma letra maiúscula e um número.\n"

echo -e "Insira a sua senha abaixo\n"
read -s senha

#Validação utilizando Regex com Perl
echo "$senha" | grep -qP '^.*(?=.{5,})(?=.*[A-Z])(?=.*\d)(?=.*[a-z]).*$'; 

#Com o grep -qP conseguimos apenas validar e não exibir o retorno na tela e o -Ppara utilizar o Perl.

VAL=$? #Armazenar o valor de $? para condicional
if [ $VAL = '0' ];then
	echo -e "\nSenha Validada com sucesso."
else
	echo -e "\nSenha Inválida tente novamente."
fi
