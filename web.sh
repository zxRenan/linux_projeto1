#!/bin/bash

apt-get update 
apt-get upgrade -y

echo 'servidor atualizado'

apt-get install apache2 -y
apt-get install unzip -y

echo 'apache instalado'

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'arquivo baixado'

unzip /tmp/main.zip -d /tmp

echo 'arquivo extraido'

cp /tmp/linux-site-dio-main/*  /var/www/html -r
