#!/bin/bash
## This work for ubuntu

## Install git
apt -y install git 

## Remove telnet
apt -y remove telnet

## Update apt cache
apt -y update

## Install LAMP
apt -y install apache2 mariadb-server php libapache2-mod-php php-mysql 

## Enable and start httpd service
systemctl enable httpd; systemctl start httpd

## Enable and start mariadb service
systemctl enable mariadb; systemctl start mariadb

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