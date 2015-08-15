require "vagrant"

module VagrantPlugins
  module CommandSSHConfigTTL
    class Plugin < Vagrant.plugin("2")
      name "ssh-config-ttl command"
      description <<-DESC
      The `ssh-config-ttl` command dumps an Tera Term Language(TTL) Macro compatible configuration
      that can be used to quickly SSH into your virtual machine.
      DESC

      command("ssh-config-ttl") do
        require File.expand_path("../command", __FILE__)
        Command
      end
    end
  end
end
