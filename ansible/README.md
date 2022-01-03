# This is the placeholder for some ansible playbooks/roles
Here will be some of the ansible stuff that used in the LCA2022 demo.

## Info
ansible.cfg   -> Customized ansible configuration file 
lca2022-hosts -> Inventory file used by ansible playbooks
my-setup.yml  -> Ansible playbook that do LAMP installation for both CentOS and Ubuntu
site.yml      -> Ansible playbook that utilized roles to setup LAMP for both CentOS and Ubuntu
roles/
 |- CentOS/   -> role to setup environment for CentOS
 |- Ubuntu/   -> role to setup environment for Ubuntu
 |- lamp/     -> role to setup basic LAMP
 
## Basic usage


