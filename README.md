Customization for CyberTaipan

Local VM
cd ~
sudo apt-get update
sudo apt install git
sudo git clone https://github.com/lovebarnowls/introd.git
cd introd
mv /home/ubuntu/introd/score.py /usr/local/bin/pysel/
mv /home/ubuntu/introd/pysel.py /usr/local/bin/pysel/
mv /home/ubuntu/introd/Event_checks/* /usr/local/bin/pysel/Event_checks/
sudo chmod a+x *.sh
sudo -H ./inject.sh
sudo -H ./install.sh


AWS Customization
#!/bin/bash
chown ubuntu:ubuntu /home/ubuntu/Desktop/*
chmod a+rw /home/ubuntu/Desktop/*
mkdir -p home/ubuntu/Desktop
mkdir -p usr/local/bin/pysel/Event_checks
cd /home/ubuntu
apt-get update -y -qq
apt install git -y -qq
git clone https://github.com/lovebarnowls/introd.git
cd /home/ubuntu/introd
mv /home/ubuntu/introd/score.py /usr/local/bin/pysel/
mv /home/ubuntu/introd/pysel.py /usr/local/bin/pysel/
mv /home/ubuntu/introd/Event_checks/* /usr/local/bin/pysel/Event_checks/
chmod a+x inject.sh
./inject.sh -y -qq
chmod a+x install.sh
./install.sh -y -qq
systemctl enable pysel_scoring.service
systemctl start pysel_scoring.service
