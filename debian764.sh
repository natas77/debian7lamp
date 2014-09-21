#!/bin/bash
apt-get update
apt-get upgrade

aptget install apache2 php5 mysql-server samba git
apt-get -y install php5 mysql-server mysql-client phpmyadmin php5-curl curl git
sudo service apache2 restart
vagrant plugin install vagrant-vbox-snapshot
composer create-project laravel/laravel laravel --prefer-dist

chmod -R 777 app/storage

chown -R :www-data app/storage


