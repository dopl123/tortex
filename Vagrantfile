# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"


  config.vm.define "vm1" do |vm1|
      vm1.vm.network  "private_network", ip: "192.168.0.2"
      vm1.vm.network  "forwarded_port", guest: 8161, host: 9000, auto_correct: true
      vm1.vm.hostname = "vm1"
      vm1.vm.provision "shell", path: "active_mq_install.sh"  
      vm1.vm.provider "virtualbox" do |vb|
         vb.memory = "1024"
      end
  end

  
 config.vm.define "vm2" do |vm2|
     vm2.vm.network "private_network", ip: "192.168.0.3"
     vm2.vm.network  "forwarded_port", guest: 8161, host: 9001, auto_correct: true
     vm2.vm.hostname = "vm2"
     vm2.vm.provision "shell", path: "active_mq_install.sh"  
     vm2.vm.provider "virtualbox" do |vb|
         vb.memory = "1024"
     end
 end


 config.vm.define "vm3" do |vm3|
     vm3.vm.network "private_network", ip: "192.168.0.4"
     vm3.vm.network  "forwarded_port", guest: 8161, host: 9002, auto_correct: true
     vm3.vm.hostname = "vm3"
     vm3.vm.provision "shell", path: "active_mq_install.sh"  
     vm3.vm.provider "virtualbox" do |vb|
         vb.memory = "1024"
     end
 end

end
