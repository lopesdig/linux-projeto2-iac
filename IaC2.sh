#! /bin/bash


echo "Atualiando o servidor..."
apt-get update
apt-get upgrade
agt-get install unzip -y
agt-get install  apache2 -y

echo "Baixando e copiando os arquivos da aplicação..."

cd  /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/


