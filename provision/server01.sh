#!/bin/sh
ORIGEN='/vagrant/provision/'

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y install vim
sudo apt-get -y install apache2 libapache2-mod-php5 php5-mysql
rm -r /var/www/html
ln -s /vagrant/wordpress /var/www/html
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
systemctl restart apache2

# Tunel para SSH
if ! grep -q "GatewayPorts yes" /etc/ssh/ssh_config 
    then echo "GatewayPorts yes" >> /etc/ssh/ssh_config
fi

