# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  # Port for static page working without deploy
  config.vm.network "forwarded_port", guest: 80, host: 8080
  # Port for python server
  config.vm.network "forwarded_port", guest: 443, host: 8081

  # Static page to work online, mapped on default Apache static pages location
  config.vm.synced_folder "./html", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"]

  config.vm.provider "virtualbox" do |vb|
    vb.name = "dummy"
    vb.memory = "2048"
    vb.cpus = "4"
  end

  config.vm.provision "file", source: "./configs", destination: "~/configs"
  config.vm.provision "file", source: "./flaskserver", destination: "~/flaskserver"
  config.vm.provision "file", source: "./html/index.html", destination: "~/flaskserver/static"
  config.vm.provision "shell", path: "bootstrap.sh"
end
