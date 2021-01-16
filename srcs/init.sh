#!/bin/bash

#Notice to navigators
echo "-------------------------------------------------------------------------------

Welcome to 

      _                                 _                                    
  ___| |__  _ __ ___  ___ ___  ___ _ __( )___   ___  ___ _ ____   _____ _ __ 
 / _ \ '_ \| '__/ _ \/ __/ __|/ _ \ '__|// __| / __|/ _ \ '__\ \ / / _ \ '__|
|  __/ |_) | | |  __/\__ \__ \  __/ |    \__ \ \__ \  __/ |   \ V /  __/ |   
 \___|_.__/|_|  \___||___/___/\___|_|    |___/ |___/\___|_|    \_/ \___|_|   
 
 
 A server running inside a Docker Container!

-------------------------------------------------------------------------------"
#/etc/init.d/nginx start (eh antigo n usa mais, embora funcione!)
service nginx start 
service mysql restart #Jah havia iniciado em STEP3 ./srcs/config
service php7.3-fpm start
# Terminal mode
/bin/bash


