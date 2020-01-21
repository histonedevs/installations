#!/bin/sh

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt update
sudo apt upgrade -y
sudo apt-get install google-chrome-stable mysql-server php7.3 php7.3-gd php7.3-mbstring mysql-client curl php7.3-cli git php7.3-mysql make gcc php7.3-curl language-pack-de language-pack-fr language-pack-es language-pack-it php7.3-intl php7.3-zip php7.3-dom php7.3-xml composer apache2 libapache2-mod-php7.3 supervisor redis-server beanstalkd zip libappindicator1 libindicator7 unity-tweak-tool zsh -y

sudo a2enmod rewrite
sudo a2enmod php7.3
sudo sed -i -e 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

sudo service apache2 restart

wget -O dropbox_2015.10.28_amd64.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
sudo dpkg -i dropbox_2015.10.28_amd64.deb

sudo apt -f install

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh 

sudo apt autoremove

sudo snap install phpstorm --classic
sudo snap install slack --classic

ssh-keygen
