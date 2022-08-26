#!/bin/bash

echo 'Atualizando o Servidor...'
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-ge install unzip -y

echo 'Fazendo Downloads dos Arquivos do Site, e copiando para a pasta do servidor'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo 'Todos os comandos executados com Sucesso!'

