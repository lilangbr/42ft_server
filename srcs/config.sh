#!/bin/bash

## NGINX config
# Send nginx.conf to sites-available folder
cp /tmp/to_nginx_sites_available/nginx.conf /etc/nginx/sites-available/nginx.conf

# Link nginx.conf with sites-enabled
ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

# Unink default from sites-enabled
unlink /etc/nginx/sites-enabled/default

# Send certificates to snippets folder
cp /tmp/to_nginx_snippets/self-signed.conf /etc/nginx/snippets/self-signed.conf
#Give permissions and change ownership
#chown -R www-data:www-data /var/www/*
#chmod -R 755 /var/www/*

#Create a database and a user test
service mysql start
echo "CREATE DATABASE exampledb;" | mysql -u root
echo "GRANT ALL ON exampledb.* TO 'exampleuser'@'localhost' IDENTIFIED BY 'exampleuser' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root




#SSL config
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=Br/ST=SP/L=SP/O=42/OU=ft/CN=localhost" \
    -keyout /etc/ssl/certs/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt
chmod 666 /etc/ssl/certs/nginx-selfsigned.key /etc/ssl/certs/nginx-selfsigned.crt

