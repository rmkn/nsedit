#!/bin/sh

DBFILE=/tmp/pdns.users.sqlite3

cp /var/www/nsedit/includes/config.inc.php-dist /var/www/nsedit/includes/config.inc.php
sed -i -e "s/^\$authdb.*\$/\$authdb = \"${DBFILE//\//\\/}\";/" /var/www/nsedit/includes/config.inc.php
