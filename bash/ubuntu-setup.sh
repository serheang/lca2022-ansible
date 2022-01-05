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
<h2>$HOSTNAME</h2>
<body>
<h1>LCA2022 - Test landing page</h1>
<p>Welcome to LCA2022!<p>
This is running on $HOSTNAM.
</body>
</html>
EOF


## Create a simple php info page
cat >/var/www/html/info.php<<EOF
<?php phpinfo(); ?>
EOF
