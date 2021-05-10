#!/bin/bash

# check if docker is installed
# if not install it

[[ -x "$(command -v docker)" ]] || sudo yum install docker docker.io -y

# if you are on Ubuntu comment the previous line 
# and use the the following line instead

# [[ -x "$(command -v docker)" ]] || sudo apt install docker docker.io -y

sudo systemctl start docker.service

sudo docker build . -t pni_website
sudo docker run -d -p 80:80  --name pni_website pni_website
