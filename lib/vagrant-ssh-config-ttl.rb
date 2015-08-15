require "vagrant-ssh-config-ttl/version"
require "vagrant-ssh-config-ttl/plugin"

module VagrantPlugins
  module CommandSSHConfigTTL
    def self.root
      File.dirname __dir__
    end
  end
end
