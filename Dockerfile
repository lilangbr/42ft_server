# Base debian buster image
FROM debian:buster

LABEL author="Eliane Bresser" user_name="ebresser" email="ebresser@student.42sp.og.br"

COPY srcs /tmp/

RUN apt-get update && apt-get upgrade -y && apt-get install nginx -y

EXPOSE 80

ENTRYPOINT bash /tmp/init.sh






