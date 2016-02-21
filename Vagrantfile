#!/usr/bin/env ruby

darkstar = [
  { :hostname => 'darkstar', :ip => '10.10.10.2'},
]

elk = [
 { :hostname =>	'elk',	:ip => '10.10.10.3'},
#   { :hostname =>	'elasticsearch',	:ip => '10.10.10.4'},
#   { :hostname =>	'logstash',	      :ip => '10.10.10.5'},
 ]

Vagrant.configure("2") do |config|

  config.vbguest.auto_update = false
  config.ssh.insert_key = false

  darkstar.each do |ans|
    config.vm.define ans[:hostname] do |ansconfig|

      ansconfig.vm.box = "ubuntu/trusty64"
      ansconfig.vm.hostname = ans[:hostname] + ".test.local"
      ansconfig.vm.network :private_network, ip: ans[:ip]

      ansconfig.vm.provision "shell", path: "bootstraps/darkstar.sh"

      ansconfig.vm.network "forwarded_port", guest: 3306,  host: 3306
      ansconfig.vm.network "forwarded_port", guest: 53445, host: 53445
      ansconfig.vm.network "forwarded_port", guest: 54230, host: 54230
      ansconfig.vm.network "forwarded_port", guest: 54231, host: 54231
      ansconfig.vm.network "forwarded_port", guest: 54001, host: 54001
      ansconfig.vm.network "forwarded_port", guest: 54002, host: 54002
      ansconfig.vm.network "forwarded_port", guest: 54003, host: 54003
      ansconfig.vm.network "forwarded_port", guest: 54230, host: 54230, protocol: "udp"

      ansconfig.vm.provider :virtualbox do |vb|
        vb.memory = 2048
        vb.cpus = 2
      end
    end
  end

  elk.each do |node|
    config.vm.define node[:hostname] do |nodeconfig|

      nodeconfig.vm.box = "ubuntu/trusty64"
      nodeconfig.vm.hostname = node[:hostname] + ".test.local"
      nodeconfig.vm.network :private_network, ip: node[:ip]

      nodeconfig.vm.provision "shell", path: "bootstraps/elk.sh"

      nodeconfig.vm.provider :virtualbox do |v|
        v.memory = 4096
        v.cpus = 2
      end
    end
  end

end
