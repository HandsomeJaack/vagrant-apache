# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 443, host: 10443

  config.vm.provider "virtualbox" do |vb|
    vb.name = "dummy"
    vb.memory = "2048"
    vb.cpus = "4"
  end

  # Static page to work from host
  config.vm.synced_folder "./html", "/home/vagrant/html"

  config.vm.provision "file", source: "./configs", destination: "~/configs"
  config.vm.provision "file", source: "./flaskserver", destination: "~/flaskserver"
  config.vm.provision "shell", path: "bootstrap.sh"
end
