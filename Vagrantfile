Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update && sudo apt-get upgrade -y
    echo "10.0.4.10 devops" >> /etc/hosts
  SHELL

  config.vm.define "devops" do |devops|
    devops.vm.box = "ubuntu/jammy64"
    devops.vm.hostname = "devops"
    devops.vm.network "private_network", ip: "10.0.4.10"
    devops.vm.provider "virtualbox" do |vb|
      vb.memory = 8192
      vb.cpus = 4
    end
  end
end

