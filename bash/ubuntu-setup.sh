#!/bin/bash
## This work for ubuntu

## Update apt cache
apt -y update

## Install LAMP
apt -y install apache2 mysql-server php libapache2-mod-php php-mysql 

## Enable and start apache2 service
systemctl enable apache2; systemctl start apache2

## Enable and start mysql service
systemctl enable mysql

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