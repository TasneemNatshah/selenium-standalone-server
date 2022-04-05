#!/bin/usr/env bash

cd ~ ;

sudo apt install -y apache2;

## Install/Update Google Chrome browser.
sudo apt-get install libappindicator1 fonts-liberation libgbm1 libgtk-3-0 xdg-utils
export CHROME_BIN=/usr/bin/google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

## Install/Update Chrome Driver.
CHROME_DRIVER_VERSION=$(wget -qO- chromedriver.storage.googleapis.com/LATEST_RELEASE);
echo $CHROME_DRIVER_VERSION;
wget http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo chmod +x chromedriver
sudo mv -f chromedriver /usr/bin/
rm chromedriver_linux64.zip

## Install Java.
sudo apt update
sudo apt install -y openjdk-11-jre openjdk-11-jre-headless openjdk-11-jdk openjdk-11-jdk-headless
            
## Run selenium standalone server.
wget http://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar

