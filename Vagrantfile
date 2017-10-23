# -*- mode: ruby -*-
# vi: set ft=ruby :

required_plugins = %w( vagrant-hostsupdater)
required_plugins.each do |plugin|
  exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end




Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  
  config.vm.define "app" do |app|
	  app.vm.network "private_network" , ip: "192.168.10.100"
	  app.hostsupdater.aliases = ["development.local"]
	  # sync the app folder to the guest
	  app.vm.synced_folder "app", "/home/ubuntu/app"
	  app.vm.synced_folder "enviroment" , "/home/ubuntu/enviroment"
	  # run the app provisionally script
	  app.vm.provision "shell", path: "enviroment/app/provision.sh"
  end

  config.vm.define "db" do |db|
    
      db.vm.network "private_network" , ip: "192.168.10.101"
	  db.hostsupdater.aliases = ["development.local"]
	  # sync the app folder to the guest
	  db.vm.synced_folder "app/seeds", "/home/ubuntu/seeds"
	  db.vm.synced_folder "enviroment" , "/home/ubuntu/enviroment"

	  # run the app provisionally script
	  db.vm.provision "shell", path: "enviroment/db/provision.sh"

  end


end
