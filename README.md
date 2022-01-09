# LCA2022 - Playtime with configuration: from shell to galaxy

## Table of Contents
- [Acknowledgement of the Country](#acknowledgement-of-the-country)
- [Abstract](#abstract)
- [TL;DR](#tldr)
- [Initial setup](#initial-setup)
- [More info](#more-info)

##  Acknowledgement of the Country
I would like to acknowledgement the Traditional Custodians of the country which this talk is recorded and streaming from.  I would also like to pay my respect to their Elders past and present.

## Abstract
In the Linux world, there are many ways that you can setup and configure your systems.  There are at least 10 configuration orchestration tools out there.  To name a few: ansible, cfengine, pupper, chef, salt and many others.  

When I first started learning Linux, I did  my configuration with bash scripts + ssh.  Then I crank up to cfengine, and try out  puppet master.  Finally, I ended up playing with ansible and living with it since then.  

I want to share my ansible journey, from shell to galaxy with you.

## TL;DR
- This is a placeholder of how I got my VMs setup, bash scripts and ansible playbooks/roles created for LCA2022 tech talk
- VirtualBox + vagrant are used to setup the VMs used in the demo  
- bash/ directory kept the shell scripts used in the demo
- ansible/ directory kept the ansible playbooks used in the demo

## Prerequisite
1. [VirtualBox](https://www.virtualbox.org/)
1. [Vagrant](https://www.vagrantup.com/)
1. [Git](https://git-scm.com/downloads）

## Initial setup
1. Clone this git repo - `git clone https://github.com/serheang/lca2022-ansible.git`  
1. Change directory into `vagrant` - `cd lca2022-ansible/vagrant`  
1. Setup the necessary VMs with `vagrant` - `vagrant up`
    > If you want to have AWX as well, the you will need to run this after the above completed - `vagrant up awx`
1. 

## More info
Here is a placeholder for the shell scripts, ansible playbooks/roles and Vagrantfile that I used in my talk.  
