#!/bin/sh

yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
yum install -y nc git ruby vim libselinux-python rsync ansible-lint

yum clean all

mkdir /root/.ssh
cat /vagrant/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh
chmod 700 /root/.ssh/authorized_keys