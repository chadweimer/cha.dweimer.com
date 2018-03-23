# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 1313, host: 1313

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
  end

  config.vm.provision "docker" do |d|
  end
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y make
  SHELL
end
