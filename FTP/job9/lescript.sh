#!/bin/bash

export IFS=","
cat /home/djamel/shell.exe/JOB9/Shell_Userlist.csv | while read Id Prenom Nom Mdp Role
do
sudo useradd -m  $Prenom-$Nom
        echo "$Prenom-$Nom:$Mdp" | sudo chpasswd
        sudo usermod -u "$Id" "$Prenom-$Nom"
                if [ "$Role" = "Admin" ]
                then
                sudo usermod -aG sudo $Prenom-$Nom
                fi
done
