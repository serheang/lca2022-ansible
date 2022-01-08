# This is the placeholder for some bash scripts
These are some bash scripts that I would be using in my LCA2022.

## Info
For CentOS 6
1. centos6-setup.sh

For CentOS 7
1. centos7-setup.sh

For Ubuntu
1. ubuntu-setup.sh

For both CentOS and Ubuntu
1. my-setup.sh

Inventory file: `lamp`  

## Basic instruction
Transfer/copy the relevant script to relevant distro, or use `my-setup.sh` for setup on either CentOS or Ubuntu.

### SCP and then execute the script
Example, to centos6:
```
scp centos6-setup.sh centos6:/tmp/
ssh centos6
    chmod +x /tmp/centos6-setup.sh
    sudo /tmp/centos6-setup.sh
```
or
```
scp my-setup.sh ubuntu:/tmp/
ssh ubuntu
    chmod +x /tmp/my-setup.sh
    sudo /tmp/my-setup.sh
```

### Execute script via ssh
Example:
```
ssh centos7 'sudo bash -s' < my-setup.sh
```
or
```
for host in `cat lamp`; do
ssh $host 'sudo bash -s' < my-setup.sh
done
```