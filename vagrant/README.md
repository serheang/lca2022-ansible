# This is the placeholder for my test VMs

## Pre-requisite
You will require to have:
1. [virtualbox](https://www.virtualbox.org/wiki/Downloads)
1. [vagrant](https://www.vagrantup.com/downloads)
1. SSH client:
  - For Windows: [putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)/[mobaxterm](https://mobaxterm.mobatek.net/download.html) or other ssh client tools
  - For Linux: Most of the modern Linux Distro have `openssh-client` installed by default, which you can use `ssh` command   
 
## VMs
Some of the VMs created with the `Vagrantfile`:
1. Centos GUI (cent7gui) - This is the main Linux for managing various tasks
~~1. CentOS 5 (centos5)~~
1. CentOS 6 (centos6)
1. CentOS 7 (centos7)
1. Ubuntu (ubuntu)
1. CentOS 8 AWX (awx) - AWX server?


## Basic instructions
### Setup
After **VirtualBox** and **Vagrant** installation, you will just need to run `vagrant up` in the `vagrant` directory and the relevant VMs should be setup.

> If your host have low memory (<8GB), you might need to bring up only cent7gui: `vagrant up cent7gui`, and maybe just 1 of the other Distro, example CentOS7: `vagrant up centos7` or Ubuntu: `vagrant up ubuntu`.

### Clean up
To clean up the VMs, run `vagrant destroy -f`.
