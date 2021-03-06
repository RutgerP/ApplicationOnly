#!/bin/bash
#Main script
sudo apt-get update && sudo apt-get upgrade -y
#Installation apache2
sudo apt-get install apache2 -y
#Installation php
sudo apt-get install php libapache2-mod-php -y
#Clear any docs in /html and copy docs from Application into /html
sudo rm -f /var/www/html/* -r
sudo cp /var/ApplicationOnly/WorkingSite/* /var/www/html/ -r -f

sudo apt-get update && sudo apt-get upgrade -y
chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'
/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync
