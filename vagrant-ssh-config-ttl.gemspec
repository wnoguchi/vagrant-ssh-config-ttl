# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-ssh-config-ttl/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-ssh-config-ttl"
  spec.version       = VagrantPlugins::CommandSSHConfigTTL::VERSION
  spec.authors       = ["Wataru Noguchi"]
  spec.email         = ["wnoguchi.0727@gmail.com"]

  spec.summary       = %q{This is a Vagrant Plugin that outputs Tera Term Language(TTL) Macro.}
  spec.description   = %q{This is a Vagrant Plugin that outputs STDOUT Tera Term Language(TTL) Macro configuration. like ssh-config.}
  spec.homepage      = "https://github.com/wnoguchi/vagrant-ssh-config-ttl"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
