Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "vagrant/bootstrap.sh"
  config.vm.network "forwarded_port", guest: 22000, host: 22000 , inline: "echo Sicoob"
  config.vm.network "forwarded_port", guest: 22001, host: 22001 , inline: "echo Banco do Brasil"
  config.vm.network "forwarded_port", guest: 22002, host: 22002 , inline: "echo Santander"
  config.vm.network "forwarded_port", guest: 22003, host: 22003 , inline: "echo Bradesco"
  config.vm.network "forwarded_port", guest: 22004, host: 22004 , inline: "echo Caixa Econômica Federal"
  config.vm.network "forwarded_port", guest: 22005, host: 22005 , inline: "echo Safra"
  config.vm.network "forwarded_port", guest: 22006, host: 22006 , inline: "echo BNDES"
  config.vm.provider "virtualbox" do |v|
    v.memory = 4144
  end
end