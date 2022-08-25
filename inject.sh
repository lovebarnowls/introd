#!/bin/bash

sudo useradd mcpoyle
sudo useradd newt
sudo useradd tina
sudo useradd albus
sudo useradd theseus
sudo useradd jacob
sudo useradd queenie
sudo passwd -d queenie
sudo passwd -d albus
sudo usermod -aG sudo albus
sudo chown tina /etc/passwd
sudo touch /opt/listen.sh
sudo mkdir /home/queenie
sudo mkdir /home/queenie/Desktop
sudo touch /home/queenie/Desktop/passwords.csv
sudo echo 'sufficient pam_succeed_if.so user ingroup nopasswdlogin' > /etc/pam.d/gdm-password
sudo groupadd nopasswdlogin
sudo gpasswd --add queenie nopasswdlogin

sudo apt update 
sudo apt install john rkhunter tshark netcat mysql-server -y

cp static/forensic?.txt /home/ubuntu/Desktop
cp static/readme.txt /home/ubuntu/Desktop
cp static/space-cadets.txt /home/ubuntu/Documents

sudo -H ./install.sh
sudo chmod 777 /etc/shadow