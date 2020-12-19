# Base debian buster image
FROM debian:buster

LABEL author="Eliane Bresser" user_name="ebresser" email="ebresser@student.42sp.og.br"

COPY srcs /tmp/

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y apt-utils && \
    apt-get install -y curl && \
    apt-get install -y nginx && \
    apt-get install -y openssl && \
    apt-get install -y mariadb-server
RUN bash /tmp/config.sh

EXPOSE 80 443

ENTRYPOINT bash /tmp/init.sh

#Black Hole: Infinite Loop to maintain the container operant
CMD tail -f /dev/null





