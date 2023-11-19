#!/bin/bash

# build codcker image
docker build -t flask_app:latest .

# save the image
sudo docker save -o flask_app.tar flask_app

