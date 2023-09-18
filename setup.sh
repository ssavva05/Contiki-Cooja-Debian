#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install openssh-client -y
sudo apt install openssh-server -y
sudo systemctl enable ssh
sudo ufw allow ssh
sudo systemctl start ssh
sudo apt install net-tools vim -y
sudo apt-get install virtualbox-guest-additions-iso -y
sudo apt install build-essential doxygen git curl wireshark python-serial -y
sudo usermod -a -G wireshark $USER
sudo apt install gcc-msp430 -y
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa -y
sudo apt install srecord gcc-arm-embedded -y
sudo apt install default-jdk ant -y
update-alternatives --config java
sudo apt install default-jdk -y
sudo apt install default-jre -y
sudo add-apt-repository ppa:webupd8team/java
sudo apt install oracle-java11-installer -y
sudo apt install oracle-java11-set-default -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:linuxuprising/java
sudo apt install oracle-java11-installer -y
echo 'export JAVA_HOME="/usr/lib/jvm/default-java"'>~/.profile
sudo usermod -a -G plugdev $USER
sudo usermod -a -G dialout $USER
sudo apt-get install -y npm \
  && sudo apt-get clean \
  && sudo npm install coap-cli -g \
  && sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install -y mosquitto mosquitto-clients
sudo echo 'ATTRS{idVendor}=="0451", ATTRS{idProduct}=="16c8", ENV{ID_MM_DEVICE_IGNORE}="1"' >> /lib/udev/rules.d/77-mm-usb-device-blacklist.rules
sudo apt-get install lib32ncurses5 lib32z1 -y
git clone https://github.com/contiki-ng/contiki-ng.git
cd contiki-ng/
git submodule update --init --recursive
cd ..
cd contiki-ng/tools/cooja
git submodule update --init
