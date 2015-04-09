#!/bin/bash

sed -i "s/Listen 80/Listen ${PORT}/" /etc/apache2/ports.conf
sed -i "s/*:80/*:${PORT}/" /etc/apache2/sites-*/*.conf
/usr/sbin/apache2ctl -D FOREGROUND