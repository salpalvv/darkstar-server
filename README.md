# darkstar-server
Vagrantfile and Ansible Playbook to create Ubuntu host and provision with darkstar server. 

This project is to standardize the installation of a darkstar server utilizing basic tools on any OS. 

# prereqs
Install Vagrant

Install Virtualbox

# how to start the server 
open a terminal / cmd prompt / shell / what have you

`vagrant plugin install vagrant-vbguest`

(Note that you only need to do this the first time. )

git clone this project.

(Note that you will need to edit in your WAN ip to darkstar-server/ansible/roles/darkstar/files/zoneip.sql in place of 127.0.0.1)

change directory to project root

`vagrant up`

`vagrant ssh`

`cd ansible`

`ansible-playbook darkstar.yml`


# provision a remote ubuntu 14.04 server
install ansible onto a machine for running the scripts. 

edit ansible/hosts IP entry for [darkstar] to the appropriate IP address

edit your remote server ip at darkstar-server/ansible/roles/darkstar/files/zoneip.sql in place of 127.0.0.1

copy your ssh public key into the remote server's /root/.ssh/authorized_keys

see: https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2

from machine with ansible: 

git clone this project.

`cd ansible`

`ansible-playbook darkstar.yml`
