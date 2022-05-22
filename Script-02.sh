#!/bin/bash

read -p "Qual arquivo deseja remover os espaços em branco: " arqv
echo -e "Arquivo antes da remoção dos espaços\n"
cat $arqv
echo ""
echo -e "Arquivo após a remoção dos espaços\n"
tr -s "\n" < $arqv


