#!/bin/bash

#service nginx start
/etc/init.d/nginx start

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

#Black Hole: Infinite Loop to maintain the container operant
tail -f /dev/null

# Terminal mode
/bin/bash


