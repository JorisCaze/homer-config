#!/bin/sh

# Deploy Homer dashboard on FreeBSD system.
# To be run as root

# Install minimum requirements
pkg update
pkg upgrade -y
pkg install -y wget unzip

# Rename personnal homer configuration repo for clarity
mv homer-config-main homer-config

# Install Homer dashboard from latest prebuilt tarball
wget https://github.com/bastienwirtz/homer/releases/latest/download/homer.zip
mkdir homer
unzip homer.zip -d homer
rm homer.zip
mv homer-config/config.yml homer/assets/

# Download icons from open-source GitHub repo
wget https://github.com/walkxhub/dashboard-icons/archive/refs/heads/master.zip -O icons.zip
unzip icons.zip
mv dashboard-icons-master/png/*.png homer/assets/icons/
rm -rf icons.zip dashboard-icons-master

# Set up NGINX web server
pkg install -y nginx
sysrc nginx_enable=YES

mv homer /usr/local/www/
chmod -R 755 /usr/local/www/homer/

sed -i '' 's#/usr/local/www/nginx;#/usr/local/www/homer;#g' /usr/local/etc/nginx/nginx.conf

service nginx start