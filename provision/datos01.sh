#!/bin/sh
ORIGEN='/vagrant/provision/'

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y install vim
sudo -E apt-get -q -y install mysql-server
mysql -e "CREATE DATABASE wp"
mysql wp < /vagrant/provision/wp.sql
cp /vagrant/provision/my.cnf /etc/mysql/
mysql -e "GRANT ALL PRIVILEGES ON wp.* TO 'usuariowp'@'10.0.0.221' IDENTIFIED BY 'pass'; FLUSH PRIVILEGES;"
/etc/init.d/mysql restart
echo '10.0.0.221 server' >> /etc/hosts
echo '10.0.0.222 datos' >> /etc/hosts
echo '10.0.0.223 control' >> /etc/hosts
useradd operador
echo operador:password | chpasswd
adduser operador sudo
cp /vagrant/provision/sshd_config /etc/ssh/
mkdir /root/.ssh
touch /root/.ssh/authorized_keys
cat /vagrant/provision/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

# Tunel para SSH
if ! grep -q "GatewayPorts yes" /etc/ssh/ssh_config 
    then echo "GatewayPorts yes" >> /etc/ssh/ssh_config
fi





