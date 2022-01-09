# This is the placeholder for my test VMs

## Pre-requisite
You will require to have:
1. [virtualbox](https://www.virtualbox.org/wiki/Downloads)
1. [vagrant](https://www.vagrantup.com/downloads)
1. SSH client:
  - For Windows: [putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)/[mobaxterm](https://mobaxterm.mobatek.net/download.html) or other ssh client tools
  - For Linux: Most of the modern Linux Distro have `openssh-client` installed by default, which you can use `ssh` command   

## **WARNING**
Please do not reuse the `vagrant-rsa` ssh-rsa private keypairs in this directory.  This private keypairs is only used for demonstration purpose and deemed to be unsecure!  

You can generate your own ssh-rsa keypairs (**PLEASE ENSURE TO SECURE WITH PASSPHRASE**): `ssh-keygen -t rsa`

## VMs
Some of the VMs created with the `Vagrantfile`:
1. CentOS7 management (mgt) - This is the main Linux for managing various tasks
1. CentOS 7 (centos7)
1. CentOS 7 (centos7-2)
1. Ubuntu 18 (ubuntu18)
1. CentOS 7 AWX (awx) - AWX server

## Basic instructions  
### Setup
After **VirtualBox** and **Vagrant** installation, you will just need to run `vagrant up` in the `vagrant` directory and the relevant VMs should be setup.
> If your host have low memory (<8GB), you might need to bring up only mgt: `vagrant up mgt`, and maybe just 1 of the other Distro, example CentOS7: `vagrant up centos7` or Ubuntu: `vagrant up ubuntu18`.

### Basic usage
#### To login:
mgt - `vagrant ssh` or `vagrant ssh mgt`  
centos7 - `vagrant ssh centos7`  
centos7-2 - `vagrant ssh centos7_2`  
ubuntu18 - `vagrant ssh ubuntu18`  
awx - `vagrant ssh awx

#### Snapshot

#### Clean up
To clean up the VMs, run `vagrant destroy -f`.




