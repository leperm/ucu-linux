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
cp /vagrant/provision/id_rsa /home/respaldo/.ssh
#sudo chmod 600 /home/respaldo/.ssh/id_rsa

# Tunel para SSH
if ! grep -q "GatewayPorts yes" /etc/ssh/ssh_config 
    then echo "GatewayPorts yes" >> /etc/ssh/ssh_config
fi





