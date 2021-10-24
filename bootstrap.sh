#!/bin/bash

apt-get update
apt-get upgrade

apt-get install -y apache2 python3 python3-pip libapache2-mod-wsgi-py3
pip3 install -r /home/vagrant/configs/requirements.txt

# Create backup for Apache
