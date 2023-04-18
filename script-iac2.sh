#!bin/bash

echo"Atualizando serviços..."
apt-get update
apt-get upgrade
apt-get install apache -y
apt-get install unzip -y

echo"Copiando Arquivos"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd Linux-site-dio-main
cp -R * /var/www/html/
