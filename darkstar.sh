#!/bin/sh

# boot the vagrant box
vagrant up

# run the ansible playbook
cd ansible
expect <<- DONE
  set timeout -1

  spawn ansible-playbook darkstar.yml -k
  match_max 100000

  # Look for passwod prompt
  expect "SSH password:"
  # Send password
  send -- "vagrant\r"
  send -- "\r"
  expect eof
DONE
