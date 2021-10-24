#!/bin/bash

apt-get update
apt-get upgrade

apt-get install -y apache2
apt-get install -y libapache2-mod-wsgi-py3
apt-get install -y python3
apt-get install -y python-pip-whl
pip3 install -r /path/to/requirements.txt
