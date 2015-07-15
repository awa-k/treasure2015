# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "treasure2015"

  config.vm.define "treasure2015" do |t|
    t.vm.hostname = "treasure2015"
    t.vm.network "private_network", ip: "192.168.50.230"

    t.vm.provider "virtualbox" do |vb|
      vb.name   = "treasure2015"
      vb.memory = 1024
    end

    t.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "treasure2015.pp"
      puppet.module_path    = "puppet/modules"
    end
  end
end
