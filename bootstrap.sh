#!/bin/bash

apt-get update
apt-get upgrade

apt-get install -y apache2 openssl python3 python3-pip libapache2-mod-wsgi-py3
pip3 install -r /home/vagrant/configs/requirements.txt

cp /home/vagrant/configs/dummy.conf /etc/apache2/sites-available

# Create server private key and certificate
mkdir -p /home/vagrant/secrets
# Don't create key if exists to avoid browser messaging untrusted cert too often
if [ ! -f /home/vagrant/secrets/server.key ]; then
    openssl req -new -x509 -nodes -days 30 -newkey rsa:4096 \
                -keyout /home/vagrant/secrets/server.key \
                -out /home/vagrant/secrets/server.pem \
                -subj "/C=RU/ST=Dmitriy/L=Moscow/O=lol/CN=www.dummy.com"
fi

# Enable Apache mode for python
a2enmod wsgi

# Enable HTTPS
a2enmod ssl
a2enmod rewrite

# Enable custom config
a2dissite 000-default.conf
a2ensite dummy.conf

service apache2 restart
