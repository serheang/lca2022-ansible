#!/bin/bash
## Check which Distro (snippet from https://unix.stackexchange.com/questions/6345/how-can-i-get-distribution-name-and-version-number-in-a-simple-shell-script)
if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    OS=SUSE
	VER=$(uname -r)
elif [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    OS=$(cat /etc/redhat-release |awk '{print $1}')
	VER=$(cat /etc/redhat-release |awk '{print $(NF-1)}')
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
fi

## If $OS=="CentOS"
if [[ $OS =~ "CentOS".* ]]; then
  ## Install mysql repo
  if [[ $VER == "6.10" ]]; then
    rpm -ivh https://dev.mysql.com/get/mysql80-community-release-el6-4.noarch.rpm
  elif [[ $VER == "7" ]]; then
    rpm -ivh https://dev.mysql.com/get/mysql80-community-release-el7-4.noarch.rpm
  fi
  ## Update cache
  yum makecache
  ### Install LAMP
  yum -y install httpd mysql-server php php-mysql
  if [[ $VER == "6.10" ]]; then
    ## Enable and start httpd service
    chkconfig --add httpd; service httpd restart
	## Enable mysql service
    chkconfig --add mysqld
  elif [[ $VER == "7" ]]; then
    ## Enable and start httpd service
    systemctl enable httpd; systemctl start httpd
    ## Enable mysql service
    systemctl enable mysqld
  fi
## If $OS=="Ubuntu"
elif [[ $OS == "Ubuntu" ]]; then
  ## Update apt cache
  apt -y update
  ## Install LAMP
  apt -y install apache2 mysql-server php libapache2-mod-php php-mysql 
  ## Enable and start apache2 service
  systemctl enable apache2; systemctl start apache2
  ## Enable mysql service
  systemctl enable mysql 
else
  echo "This is not CentOS nor Ubuntu!  Exiting setup ..."
  exit 255
fi

## Create a sample landing page
cat >/var/www/html/index.html<<EOF
<html>
<title>Test page for LCA2022</title>
<body>
<h1>LCA2022 - Test landing page</h1>
Welcome to LCA2022!
</body>
</html>
EOF

## Create a simple php info page
cat >/var/www/html/info.php<<EOF
<?php phpinfo(); ?>
EOF
