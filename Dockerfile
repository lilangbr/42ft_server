# Base debian buster image
FROM debian:buster

LABEL author="Eliane Bresser" user_name="ebresser" email="ebresser@student.42sp.og.br"

COPY srcs /tmp/

RUN apt-get update && \
    apt-get -y upgrade && \
#Install other features
    apt-get install -y apt-utils && \
    apt-get install -y curl && \
#Install NGINX, OpenSSL and MariaDB
    #Step1 ---------------------------------------
    apt-get install -y nginx && \ 
    #Step2 ---------------------------------------
    apt-get install -y openssl && \
    #Step3 ---------------------------------------
    apt-get install -y mariadb-server && \
#Install PHP and packages
    #Step4 ---------------------------------------
    apt-get install -y php7.3 && \
    apt-get install -y php-fpm php-mysql && \
    #Step5 ---------------------------------------
    apt-get install -y php-curl php-gd php-intl && \
    apt-get install -y php-mbstring php-soap php-xml php-xmlrpc php-zip && \
#Download Wordpress and extract the compressed file    
    cd /tmp && \
    curl -LO https://wordpress.org/latest.tar.gz && \
    tar xzvf latest.tar.gz


RUN bash /tmp/config.sh

EXPOSE 80 443

ENTRYPOINT bash /tmp/init.sh

#Black Hole: Infinite Loop to maintain the container operant
CMD tail -f /dev/null





