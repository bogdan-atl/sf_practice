# Vagrant Postgres

This repository contains the necessary files to stand up a Vagrant box with the Postgres database installed.

## Getting Started

- Install VirtualBox: https://www.virtualbox.org/wiki/VBoxInstallAndRun
- Install Vagrant: https://docs.stackstorm.com/install/vagrant.html
- Install Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
- Clone this repository

```shell
git clone https://github.com/EncoreTechnologies/vagrant-postgres.git
cd vagrant-postgres
```

- Start the Vagrant VM
```shell
vagrant up
```

- Login to the Vagrant VM
```shell
vagrant ssh
```

- Change to the `postgres` user
```shell
sudo -s -u postgres
```

- Run the psql command to list existing databases
```shell
psql -l
```

- Run the psql command to login to a database 
**NOTE** you'll need to figure out how to create a dtabase first
```shell
psql mydatabasename
```

- Logging out of the psql console
```shell
postgres=# \q
```

- Logging out of the vagrant VM
```shell
exit
```

## Turning the VM on/off without deleting data

**CAUTION** : If you run `vagrant destroy` the VM will be completely deleted and you'll lose
any of your saved work.

To prevent this:

1. Backup your data in another place, git repositories are a good idea!
2. Use the following commands to pause/resume your VM without deleting your data:

```shell
# to pause the VM in its current state
vagrant suspend

# to shut down the VM's guest OS, next time you start up the VM it will boot back up
vagrant halt

# to resume the VM after either of the above commands
vagrant up
```


## Deleting the VM and starting over

**NOTE** THIS WILL DELETE THE ENTIRE VM AND ALL OF YOUR WORK!
```shell
# delete the VM
vagrant destroy -f

# provision a new VM from scratch
vagrant up
```
