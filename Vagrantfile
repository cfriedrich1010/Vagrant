Vagrant.configure("2") do |config|
  config.vm.provision :shell, inline: "echo Hello"
  
  config.vm.define "fronted" do |fronted|
    fronted.vm.box = "hashicorp/precise64"
    fronted.vm.box_version = "1.1.0"
    fronted.vm.provision "shell", path: "bootstrap-nginx.sh"
    fronted.vm.network "private_network", ip: "10.0.0.10"
  end

  config.vm.define "load1" do |load1|
    load1.vm.box = "hashicorp/precise64"
    load1.vm.box_version = "1.1.0"
    load1.vm.provision "shell", path: "bootstrap-apache1.sh" 
    load1.vm.network "private_network", ip: "10.0.0.20"
  end
  
  config.vm.define "load2" do |load2|
    load2.vm.box = "hashicorp/precise64"
    load2.vm.box_version = "1.1.0"
    load2.vm.provision "shell", path: "bootstrap-apache2.sh"
    load2.vm.network "private_network", ip: "10.0.0.30"
  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
