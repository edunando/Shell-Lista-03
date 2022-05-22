#!/bin/bash

read -p 'Insira aqui um arquivo: ' arqv
echo ""
echo -e "Aquivo antes do comando tr:\n"
cat $arqv
echo ""
echo -e "Arquivo depois do comando tr:\n"
tr -s "1234567890" 'Z' < $arqv
