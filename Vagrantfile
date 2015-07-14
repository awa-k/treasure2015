# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "treasure2015"

  config.vm.define "treasure2015" do |t|
    t.vm.hostname = "treasure2015"
    t.vm.network "private_network", ip: "192.168.50.230"

    t.vm.provider "virtualbox" do |vb|
      vb.name = "treasure2015"
      vb.memory = 1024
    end
  end
end
