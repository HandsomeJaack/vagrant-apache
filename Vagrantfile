# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.network "private_network", ip: "192.168.33.10"

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

  # Setup /etc/hosts for convinience
  config.trigger.after :up do |trigger|
    trigger.info = "Adding to hosts."
	# This complex inline used to avid sed's TAB misunderstanding
    trigger.run = {inline: "sudo bash -c 'chmod +x ./add_host.sh && ./add_host.sh'"}
  end

  # Cleanup /etc/hosts
  config.trigger.before :destroy do |trigger|
    trigger.info = "Clean up."
    trigger.run = {inline: "sudo bash -c 'sed \'/www\.dummy-example\.com/d' -i /etc/hosts'"}
  end
end
