# 42ft_server

This is a System Administration subject, to discover Docker and set up my first web server! This server runs multiples services: 
* **Wordpress**, 
* **phpMyAdmin**, and a 
* **SQL database**

• It was set up a web server with **Nginx**, in only one debian buster docker container. 

• Ther web server is be able to run several services at the same time: WordPress website, phpMyAdmin and MySQL. (It was make sure that the SQL database works with the WordPress and phpMyAdmin.)

• The server is be able to use the SSL protocol.

• Depending on the url, the server redirects to the correct website.

• Ther server is running with an autoindex that is be able to be disabled.

**Enjoy this!**

![0th](readme_images/0.png)

In order you understand how the server was contructed, below it was the steps of this project: 
(The intermediate files can be obtained by looking for commits)

<h2>Step 1 - NGINX</h2>

Install **NGINX server**, start it and keep the container running.

![1th](readme_images/1.png)

<b>To keep container running:</b>
_In Unix-type operating systems, the / dev / null, or null device, is a special file that discards all information written in it and that does not return any information to a process that reads it (more precisely, it returns an end of archive). In Unix programming jargon, it's also called a bit bucket or "black hole"._ [See](https://pt.wikipedia.org/wiki/Dispositivo_nulo)

* <b>Build:</b> 
  * $ sudo docker image build -t lilangbr/ft_server:1.0 .
* <b>Up:</b>    
  * $ sudo docker container run -it -p 80:80 --name v1.0 lilangbr/ft_server:1.0

![1_1th](readme_images/1_1.png) 
  
* <b>Stop:</b>    
  * $ sudo docker container stop v1.0
* <b>Start again:</b>    
  * $ sudo docker container start -ai v1.0 
  
<h2>Step 2 - SSL</h2>

Configure nginx <b>HTTPS</b> server with self-signed <b>SSL certificate</b>.
* Three <b>new files</b>: config.sh, nginx.conf and self-signed.conf
  * The first copies the others, which are additional configuration files, to the folders specified in the container, makes the necessary links, as well as creates a self-signed key and certificate pair with OpenSSL installed by Dockerfile(#SSL config).
  * In the second, additional configuration file, the connection to port 80 is redirected to a secure HTTPS connection - port 443, which is added, setting the certificate, including the self-signed.conf file, as well as the index files.
    
![2th](readme_images/2.png)

* <b>Build:</b> 
  * $ sudo docker image build -t lilangbr/ft_server:1.1 .
* <b>Up:</b>    
  * $ sudo docker container run -it -p 80:80 -p 443:443 --name v1.1 lilangbr/ft_server:1.1
* <b>To stop and start again, see Step 1.</b>
<h2>Step 3 - MySQL</h2>

Install **MariaDB Server**, start it and test an exampledb and a exampleuser.

* <b>Modified files:</b>

![3_0th](readme_images/3_0.png)

* <b>Schema:</b>

![3th](readme_images/3.png)

* <b>Start</b>

![3_1th](readme_images/3_1.png)

* <b>Test</b>

![3_2th](readme_images/3_2.png)

* <b>Exit</b>

![3_4th](readme_images/3_4png)

* <b> ***** All right! ***** </b>

* <b>Build:</b> 
  * $ sudo docker image build -t lilangbr/ft_server:1.2 .
* <b>Up:</b>    
  * $ sudo docker container run -it -p 80:80 -p 443:443 --name v1.2 lilangbr/ft_server:1.2
* <b>Stop:</b>    
  * $ sudo docker container stop v1.2
* <b>Start again:</b>    
  * $ sudo docker container start -ai v1.2 
 
 <h2>Step 4 - PHP</h2>

Install **PHP** for processing. Need PHP fastCGI process manager to handle PHP requests. It's also necessary a module that allows PHP to communicat wiht MySQL.

![4th_0](readme_images/4_0.png)

* <b>Schema:</b>

![4th](readme_images/4.png)

* <b>Test 1: Passed!</b>

![4_1th](readme_images/4_1.png)

* <b>Test 2: Passed!</b>

![4_2th](readme_images/4_2.png)

* <b>Test 3: Passed!</b>

![4_3th](readme_images/4_3.png)

* <b> ***** All right! ***** </b>

* <b>Build:</b> 
  * $ sudo docker image build -t lilangbr/ft_server:1.3 .
* <b>Up:</b>    
  * $ sudo docker container run -it -p 80:80 -p 443:443 --name v1.3 lilangbr/ft_server:1.3
* <b>Stop:</b>    
  * $ sudo docker container stop v1.3
* <b>Start again:</b>    
  * $ sudo docker container start -ai v1.3 
