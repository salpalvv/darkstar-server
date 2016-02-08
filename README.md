# darkstar-server
Vagrantfile and Ansible Playbook to create Ubuntu host and provision with darkstar server. 

This project is to standardize the installation of a darkstar server utilizing basic tools on any OS. 

# prereqs
Install Vagrant

Install Virtualbox

# how to start the server 
open a terminal / cmd prompt / shell / what have you

$ vagrant plugin install vagrant-vbguest

(Note that you only need to do this the first time. )

git clone this project.

(Note that you will need to edit in your WAN ip to darkstar-server/ansible/roles/darkstar/files/zoneip.sql in place of 127.0.0.1)

change directory to project root



$ vagrant up

$ vagrant ssh

$ cd ansible

$ ansible-playbook darkstar.yml

