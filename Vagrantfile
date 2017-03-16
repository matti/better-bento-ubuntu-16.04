Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 3
    vb.memory = 1024
  end

  config.vm.provision "shell", inline: <<-SHELL
    set -e
    sed -i 's/http:\\/\\/us.archive.ubuntu.com\\/ubuntu\\//mirror:\\/\\/mirrors.ubuntu.com\\/mirrors.txt/g' /etc/apt/sources.list
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get upgrade -y
  SHELL
end
