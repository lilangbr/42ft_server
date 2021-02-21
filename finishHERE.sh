#!/bin/bash

sudo docker container rm ebresser_cnt
sudo docker image rm ebresser_img
echo "--------------------------------------------------------------------------------"
echo "The container and its image were removed! BYE!"
echo "--------------------------------------------------------------------------------"
