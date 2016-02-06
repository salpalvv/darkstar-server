#!/bin/sh

#setup ansible
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible

su vagrant -c 'ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa'
cp /home/vagrant/.ssh/id_rsa.pub /vagrant
mkdir /root/.ssh
cat /vagrant/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh
chmod 700 /root/.ssh/authorized_keys

cp -r /vagrant/ansible /home/vagrant/

ansible-galaxy install -r /home/vagrant/ansible/requirements.yml
