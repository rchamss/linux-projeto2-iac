#!/bin/bash

apt-get update -y && apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip/

rm  /var/www/html/index.html
cp -R /tmp/linux-site-dio-main/* /var/www/html/

