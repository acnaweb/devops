#!/usr/bin/env bash
 
echo "Initializing Apache"
yum install -y httpd
cp -r /vagrant/html/* /var/www/html/
service httpd start