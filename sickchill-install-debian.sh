#curl https://raw.githubusercontent.com/SickChill/SickChill/master/contrib/debian-ubuntu-install.sh | sudo bash

sudo apt-get update && sudo apt-get install unrar-free git-core openssl libssl-dev python2.7

sudo addgroup --system sickchill
sudo adduser --disabled-password --system --home /var/lib/sickchill --gecos "SickChill" --ingroup sickchill sickchill

sudo mkdir /opt/sickchill 
sudo chown sickchill:sickchill /opt/sickchill
sudo -u sickchill git clone https://github.com/SickChill/SickChill.git /opt/sickchill
cd /opt/sickchill
sudo -u sickchill python2 SickBeard.py

#SickChill installation Ubuntu 15
#miigotu edited this page on 25 Nov 2018 · 6 revisions
#Ubuntu 15.*
#The following instructions are for installing SickChill on Ubuntu 15.*.
#The installation should also be applicable to the upcoming 16.04 LTS as it is just a systemd setup.
#The installation assumes that you're not using the root user to install/run sickchill - the entries for user:group throughout the document will be set as sickchill:sickchill and you will have to modify #if #if you want it to match your user configuration.
#If you trust us and would like us to just do it for you just paste this:
#curl https://raw.githubusercontent.com/SickChill/SickChill/master/contrib/debian-ubuntu-install.sh #| sudo bash
#Otherwise:
#    Update repositories and install SickChill dependencies This will give you unrar-free (guess), #and git to pull the repo
#    sudo apt-get update && sudo apt-get install unrar-free git-core openssl libssl-dev python2.7
#    Create sickchill user and group This makes sure that sickchill is isolated and is best #practice for security
#    sudo addgroup --system sickchill
#    sudo adduser --disabled-password --system --home /var/lib/sickchill --gecos "SickChill" --#ingroup sickchill sickchill
#    Clone SickChill git repo
#    sudo mkdir /opt/sickchill 
#    sudo chown sickchill:sickchill /opt/sickchill
#    sudo -u sickchill git clone https://github.com/SickChill/SickChill.git /opt/sickchill
#    Copy systemd service
#    sudo cp -v /opt/sickchill/runscripts/init.systemd /etc/systemd/system/sickchill.service
#    Make sure your new service has correct permissions
#    sudo chown root:root /etc/systemd/system/sickchill.service
#    sudo chmod 644 /etc/systemd/system/sickchill.service
#    Enable, start, and then check the status of your new service
#    sudo systemctl enable sickchill
#    sudo systemctl start sickchill
#    sudo systemctl status sickchill
#All done, verify that SickChill is accessible at: http://localhost:8081
#Pages 30
#Main
#Wiki Home
#What is SickChill?
#Installation/Setup Guides
#Donations and support
#Installation packages
#Translations
#Debugging
#FAQ's and Fixes
#Scene exceptions
#SSL Errors
#Settings
#Main settings explained
#Show settings explained
#Remaining settings explained
#NZBtoMedia
#MetaData
#Post-Processing
#Quality Settings
#Clone this wiki locally

