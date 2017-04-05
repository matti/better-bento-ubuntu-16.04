vm_name = ENV.fetch 'VM_NAME'

Vagrant.configure("2") do |config|
  config.vm.define vm_name

  config.vm.box = "bento/ubuntu-16.04"
  config.ssh.insert_key = false

  config.vm.provision "shell", path: "provision.sh"

  if vm_name == "vmware_fusion"
    config.vm.provider "vmware_fusion" do |v|
      v.vmx["numvcpus"] = 3
      v.vmx["memsize"] = 1024
      v.vmx["vhv.enable"] = "TRUE"
    end
  else
    config.vm.provider "virtualbox" do |vb|
      vb.cpus = 3
      vb.memory = 1024
    end
  end

end
