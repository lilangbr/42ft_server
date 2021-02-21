#! /bin/bash

netstat -anp | grep 0.0.0.0:80
if [ $? -eq 0 ]; then
        echo "WARNING:"
        echo "There is already a service at port 80. Disable to be able to up the container!";
else
        sudo docker image build -t ebresserIMAGE . && \
        sudo docker container run -it -p 80:80 --name ebresserCONTAINER ebresserIMAGE;
fi
