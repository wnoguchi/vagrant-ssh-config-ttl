# Vagrant Tera Term ssh-config Plugin

This plugin outputs STDOUT Tera Term Language(TTL) Macro configuration.  
This plugin works like ssh-config command output.

## Installation

Run following command on your terminal.

```
vagrant plugin install vagrant-ssh-config-ttl
```

## Usage

```
C:\path\to\vagrantfile> vagrant ssh-config-ttl > connect.ttl
```

or

```
C:/path/to/vagrantproject>vagrant ssh-config-ttl
HOSTADDR = '127.0.0.1'
PORT = '2222'
USERNAME = 'vagrant'
COMMAND = HOSTADDR
strconcat COMMAND ':'
strconcat COMMAND PORT
strconcat COMMAND ' /ssh /2 /auth=publickey /nosecuritywarning /user='
strconcat COMMAND USERNAME
  strconcat COMMAND ' /keyfile="C:/path/to/vagrantproject/.vagrant/machines/default/virtualbox/private_key"'
connect COMMAND
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wnoguchi/vagrant-ssh-config-ttl.
