#!/bin/bash

## NGINX config
# Send nginx.conf to sites-available 
cp /tmp/to_nginx_sites_available/nginx.conf /etc/nginx/sites-available/nginx.conf

# Link nginx.conf with sites-enabled
ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

# Unink default from sites-enabled
unlink /etc/nginx/sites-enabled/default

#Give permissions and change ownership
#chown -R www-data:www-data /var/www/*
#chmod -R 755 /var/www/*


#SSL config
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=Br/ST=SP/L=SP/O=42/OU=ft/CN=localhost" \
    -keyout /etc/ssl/certs/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt
chmod 666 /etc/ssl/certs/nginx-selfsigned.key /etc/ssl/certs/nginx-selfsigned.crt

