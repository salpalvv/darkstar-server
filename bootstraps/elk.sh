#!/bin/sh

cat /vagrant/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh
chmod 700 /root/.ssh/authorized_keys
