#!/bin/sh
ORIGEN='/vagrant/provision/'

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y install vim
echo '10.0.0.221 server' >> /etc/hosts
echo '10.0.0.222 datos' >> /etc/hosts
echo '10.0.0.223 control' >> /etc/hosts
useradd respaldo
useradd operador
echo operador:password | chpasswd
adduser operador sudo
mkdir /home/respaldo
mkdir /home/respaldo/.ssh
cp /vagrant/provision/known_hosts /home/respaldo/.ssh/known_hosts
chown -R respaldo /home/respaldo/.ssh/known_hosts

# Tunel para SSH
if ! grep -q "GatewayPorts yes" /etc/ssh/ssh_config 
    then echo "GatewayPorts yes" >> /etc/ssh/ssh_config
fi





