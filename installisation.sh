#!/bin/bash
sudo apt update && sudo apt upgrade -y 
sudo apt install nginx git openssh-server cron
cd && mkdir Project && cd Project
git clone https://github.com/Estemis538/sysadmin-portfolio.git
mkdir /var/www/
mv sysadmin-portfolio/index.html /var/www/
rm -r /etc/nginx/sites-available/default
mv sysadmin-portfolio/nginx/default /etc/nginx/sites-available
sudo nginx -t
sudo systemctl reload nginx 

