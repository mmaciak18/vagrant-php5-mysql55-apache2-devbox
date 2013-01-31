Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :hostonly, "192.168.33.10"
  # change the /Volumes/Data/DevRoot/www folder to whatever folder contains your source files
  config.vm.share_folder "www", "/var/www", "/Volumes/Data/DevRoot/www", :nfs => true
  config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.manifest_file = "default.pp"
  end
end
