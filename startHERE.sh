#!/bin/bash

build="sudo docker image build -t ebresser_img ."
up="sudo docker container run -it -p 80:80 -p 443:443 --name ebresser_cnt ebresser_img"

netstat -anp | grep 0.0.0.0:80 
if [ $? -eq 0 ]; then
	echo "WARNING:"
	echo "There is already a service at port 80. Disable to be able to up the container!";
	echo "TIP: Verify NGINX. To stop this, type 'sudo service nginx stop' on terminal"
else
	$build && $up;
fi
