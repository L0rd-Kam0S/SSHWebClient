#!/bin/bash
echo Downloading Packages...
wget https://github.com/Ei8htbits/SSHWebClient/raw/master/setup-module.tar.gz
echo
echo
echo Extracting...
tar -xzvf setup-module.tar.gz
echo
echo Starting install...
echo
opkg install ~/setup-module/shellinabox_2.10-1_ar71xx.ipk
echo
echo Shellinabox Finished.
echo
echo Installing Module files....
echo
mv /root/setup-module/SSHWebClient /pineapple/modules/
echo
echo Cleaning installation files...
rm /root/setup-module/shellinabox_2.10-1_ar71xx.ipk
rmdir /root/setup-module
rm /root/setup-module.tar.gz
echo
echo Installation complete.
