#!/bin/bash
sudo apt install gedit john rkhunter sqlite3 mysql-server -y -qq
sudo useradd ron
sudo useradd idontbelonghere
sudo useradd chris
sudo useradd yang
sudo useradd james
sudo useradd sam
sudo passwd -d ron
sudo usermod -aG sudo ron
sudo usermod -aG sudo sam
sudo mkdir -p /home/yang/desktop/iloveqld
sudo mkdir -p /home/chris/desktop/ilovevic/vicisawesome
sudo echo 'you should not have opened this' > /home/yang/desktop/iloveqld/clickonthistomakeyourdreamscometrue.dll
sudo echo 'you should not open this either' > /home/chris/desktop/ilovevic/vicisawesome/thisisabackdoor.exe
sudo echo 'thisisforadvancedquestion1' > /home/chris/desktop/ilovevic/lullaby.txt
sudo chown :1006 /home/chris/desktop/ilovevic/lullaby.txt
sudo mkdir -p /home/james/desktop/
sudo echo 'welcometocybertaipantraining' |base64 > /home/james/desktop/welcome.txt


