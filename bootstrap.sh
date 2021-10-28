#!/bin/bash

apt-get update
apt-get upgrade

apt-get install -y apache2 python3 python3-pip libapache2-mod-wsgi-py3
pip3 install -r /home/vagrant/configs/requirements.txt

cp /home/vagrant/configs/dummy.conf /etc/apache2/sites-available

# python3 /home/vagrant/flaskserver/dummyapp.py &

# Enable Apache mode for python
a2enmod wsgi
# Enable custom config
a2ensite dummy.conf

service apache2 restart
