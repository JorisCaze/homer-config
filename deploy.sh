#!/bin/sh

# Deploy Homer dashboard on FreeBSD system.
# To be run as root

# Install minimum requirements
pkg update
pkg upgrade
pkg -y wget unzip

# Rename personnal homer configuration repo for clarity
mv main homer-config

# Install Homer dashboard from latest prebuilt tarball
wget https://github.com/bastienwirtz/homer/releases/latest/download/homer.zip
unzip homer.zip
rm homer.zip
mv homer-config/config.yml homer/assets/

# Download icons from open-source GitHub repo
wget https://github.com/walkxhub/dashboard-icons/archive/refs/heads/master.zip
unzip master.zip
mv png/*.png homer/icons/
rm master.zip master

# Set up NGINX web server
pkg -y install nginx
sysrc nginx_enable=YES

mkdir -p /usr/local/www/homer/
mv homer/* /usr/local/www/homer/
chmod -R 755 /usr/local/www/homer/

sed -i '' 's#/usr/local/www/nginx;#/usr/local/www/homer;#g' /usr/local/etc/nginx/nginx.conf

service nginx start