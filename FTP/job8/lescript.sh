#!/bin/bash
# desinstaller le service proftpd 
sudo service proftpd stop
sudo apt-get remove --purge proftpd-* -y
sudo apt-get remove --purge openssl -y
sudo apt-get remove --purge sudo -y

#supprimer les utilisateur
sudo userdel -r Merry && sudo userdel -r Pippin

