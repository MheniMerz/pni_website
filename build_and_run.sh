#!/bin/bash

docker build . -t pni_website
docker run -d -p 80:80  pni_website
