Vagrant.configure("2") do |config|
  config.vm.box = "centos7RailsMysql"
  config.vm.provider :virtualbox do |vb|
    vb.customize [ 'modifyvm', :id, '--memory', 800 ]
  end
  config.vm.network "forwarded_port", guest: 3000, host: 4000, host_ip: "127.0.0.1"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
end
