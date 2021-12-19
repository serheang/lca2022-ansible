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
1. Main Centos GUI (cent7gui)
1. CentOS 5 (centos5)
1. CentOS 6 (centos6)
1. CentOS 7 (centos7)
1. CentOS 8 AWX (awx)
1. Ubuntu webserver (web01)
1. Centos 7 webserver (web02)


## Basic instructions
### Setup
After **VirtualBox** and **Vagrant** installation, you will just need to run `vagrant up` in the `vagrant` directory and the relevant VMs should be setup.

### Clean up
To clean up the VMs, run `vagrant destroy -f`.
