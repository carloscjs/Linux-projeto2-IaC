#!/bin/bash

echo "Comandos para atualização, servidor, instalação apache2 e unzip"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos da aplicação"

echo "Foi utilizado projeto clone página Netflix, bootcamp Carrefour WebDeveloper"
cd /tmp
wget https://github.com/carloscjs/Desafio-Dio-Clone-Netflix/archive/refs/heads/main.zip
unzip main.zip
cd Desafio-Dio-Clone-Netflix-main
cp -R * /var/www/html/

echo "Fim ....."
