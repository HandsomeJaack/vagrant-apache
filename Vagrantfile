# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Static page virtual host
  config.vm.synced_folder "./html", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"]

  config.vm.provider "virtualbox" do |vb|
    vb.name = "dummy"
    vb.memory = "2048"
    vb.cpus = "4"
  end

  config.vm.provision "file", source: "./configs", destination: "~/configs"
  config.vm.provision "shell", path: "bootstrap.sh"
end
