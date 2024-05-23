#!/bin/bash

apt update

sh /vagrant/scripts/install_java_11.sh
sh /vagrant/scripts/install_docker.sh
sudo usermod -aG docker vagrant