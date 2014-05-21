# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # vm base box
  config.vm.box = "precise32"
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

  # provision
  config.vm.provision "shell", path: "./bootstrap.sh"

  # virtualbox settings
  config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
    vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

end