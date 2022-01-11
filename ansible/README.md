# This is the placeholder for some ansible playbooks/roles
Here will be some of the ansible stuff that used in the LCA2022 demo.

## Info
ansible.cfg   -> Customized ansible configuration file  
lca2022-hosts -> Inventory file used by ansible playbooks  
my-setup.yml  -> Ansible playbook that do Apache installation for both CentOS and Ubuntu  
site.yml      -> Ansible playbook with roles to setup Apache for both CentOS and Ubuntu  
roles/  
	|- CentOS/   -> role to setup environment for CentOS  
	|- Ubuntu/   -> role to setup environment for Ubuntu  
	|- apache/   -> role to setup basic Apache  
 
## Basic usage


