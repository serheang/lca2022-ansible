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
  ## Update yum cache
  yum makecache
  ### Install Apache
  yum -y install httpd php
  if [[ $VER == "6.10" ]]; then
    ## Enable and start httpd service
    chkconfig --add httpd; service httpd restart
  elif [[ $VER == "7" ]]; then
    ## Enable and start httpd service
    systemctl enable httpd; systemctl start httpd
  fi
## If $OS=="Ubuntu"
elif [[ $OS == "Ubuntu" ]]; then
  ## Update apt cache
  apt -y update
  ## Install Apache
  apt -y install apache2 php
  ## Enable and start apache2 service
  systemctl enable apache2; systemctl start apache2
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
<h2>$HOSTNAME</h2>
<p>Welcome to LCA2022!<p>
This is running on $HOSTNAME, OS: $OS, Version: $VER
</body>
</html>
EOF

## Create a simple php info page
cat >/var/www/html/info.php<<EOF
<?php phpinfo(); ?>
EOF
