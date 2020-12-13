# 42ft_server

<h2>Step 1 - NGINX</h2>

Install **NGINX server**, start it and keep the container running.

![1th](readme_images/1.png)

_In Unix-type operating systems, the / dev / null, or null device, is a special file that discards all information written in it and that does not return any information to a process that reads it (more precisely, it returns an end of archive). In Unix programming jargon, it's also called a bit bucket or "black hole"._ [See](https://pt.wikipedia.org/wiki/Dispositivo_nulo)

* <b>Build:</b> 
  * $ sudo docker image build -t lilangbr/ft_server:1.0 .
* <b>Up:</b>    
  * $ sudo docker container run -p 80:80 --name v1.0 lilangbr/ft_server:1.0
* <b>Stop:</b>    
  * $ sudo docker container stop v1.0
  
<h2>Step 2 - SSL</h2> 

Configure nginx <b>HTTPS</b> server with self-signed <b>SSL certificate</b>.
