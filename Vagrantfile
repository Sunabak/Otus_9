Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision "watchlog", type: "shell", path: "./script/watchlog_start.sh"
  config.vm.provision "spawn-fcgi", type: "shell", path: "./script/spawn-fcgi.sh"
  config.vm.provision "httpd2services", type: "shell", path: "./script/httpd_init.sh"
end
