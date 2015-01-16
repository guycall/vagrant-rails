# vagrant-rails
This is a minimalistic script to provision of a fresh vagrant box ubuntu/trusty64 for rails development. Uses shell as provisioner and just makes use of the default Ubunutu version of Ruby (currently 1.9.3). Typically people will recommend using a Ruby version management tool like RVM or rbenv, but I wanted the simplest setup to get up and running.

In your Vagrantfile add the below line:

`config.vm.provision :shell, path: "./vagrant-rails.sh"`

Then the first time you run `vagrant up` the provisioner script will get triggered and 20 minutes after all the installs have finished you can get developing.

More information on using Shell for Vagrant provisioning: https://docs.vagrantup.com/v2/provisioning/shell.html
