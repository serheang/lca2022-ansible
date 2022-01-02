#!/bin/bash
## This work for centos7

## Install mysql-community repo
rpm -ivh https://dev.mysql.com/get/mysql80-community-release-el7-4.noarch.rpm

## Update yum cache
yum makecache

## Install LAMP
yum -y install httpd mysql-server php php-mysql

## Enable and start httpd service
systemctl enable httpd; systemctl start httpd

## Enable and start mysql service
systemctl enable mysqld

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
