#!/usr/bin/env ruby

darkstar = [
  { :hostname => 'darkstar', :ip => '10.10.10.2'},
]

Vagrant.configure("2") do |config|

  config.vbguest.auto_update = false
  config.ssh.insert_key = false

  darkstar.each do |ans|
    config.vm.define ans[:hostname] do |ansconfig|

      ansconfig.vm.box = "ubuntu/trusty64"
      ansconfig.vm.hostname = ans[:hostname] + ".test.local"
      ansconfig.vm.network :private_network, ip: ans[:ip]

      #ansconfig.vm.provision "shell", path: "bootstraps/darkstar.sh"

      ansconfig.vm.network "forwarded_port", guest: 3306,  host: 3306
      ansconfig.vm.network "forwarded_port", guest: 53445, host: 53445
      ansconfig.vm.network "forwarded_port", guest: 54230, host: 54230
      #ansconfig.vm.network "forwarded_port", guest: 54231, host: 54231
      ansconfig.vm.network "forwarded_port", guest: 54001, host: 54001
      ansconfig.vm.network "forwarded_port", guest: 54002, host: 54002
      ansconfig.vm.network "forwarded_port", guest: 54003, host: 54003
      ansconfig.vm.network "forwarded_port", guest: 54230, host: 54230, protocol: "udp"

      ansconfig.vm.provider :virtualbox do |vb|
        vb.memory = 4096
        vb.cpus = 4
      end
    end
  end
end
