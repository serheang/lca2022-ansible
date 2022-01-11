#!/bin/bash
## This work for centos6

## Install Apache
yum -y install httpd php

## Enable and start httpd service
chkconfig --add httpd; service httpd restart

## Create a sample landing page
cat >/var/www/html/index.html<<EOF
<html>
<title>Test page for LCA2022</title>
<body>
<h1>LCA2022 - Test landing page</h1>
<h2>$HOSTNAME</h2>
<p>Welcome to LCA2022!<p>
This is running on $HOSTNAME.
</body></html>
EOF

## Create a simple php info page
cat >/var/www/html/info.php<<EOF
<?php phpinfo(); ?>
EOF
