#!/bin/bash
## This work for ubuntu

## Update apt cache
apt -y update

## Install Apache
apt -y install apache2 php libapache2-mod-php

## Enable and start apache2 service
systemctl enable apache2; systemctl start apache2

## Create a sample landing page
cat >/var/www/html/index.html<<EOF
<html>
<title>Test page for LCA2022</title>
<body>
<h1>LCA2022 - Test landing page</h1>
<h2>$HOSTNAME</h2>
<p>Welcome to LCA2022!<p>
This is running on $HOSTNAM.
</body>
</html>
EOF

## Create a simple php info page
cat >/var/www/html/info.php<<EOF
<?php phpinfo(); ?>
EOF
