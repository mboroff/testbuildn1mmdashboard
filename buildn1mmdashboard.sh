#!/bin/bash

clear
echo " "
echo "Build a N1MM Dashboard V1.0"
echo " "

echo "BBBB   U  U  IIIII  LL    DDDD    IIIII N     N  GGGG"
echo "B   B  U  U    I    LL    D   D     I   NN    N G    G"
echo "B   B  U  U    I    LL    D    D    I   N N   N G"
echo "BBBB   U  U    I    LL    D    D    I   N  N  N G GGG"
echo "B   B  U  U    I    LL    D    D    I   N   N N G    G"
echo "B   B  U  U    I    LL    D   D     I   N    N  G    G"
echo "BBBB   UUUU  IIIII  LLLLL DDDD    IIIII N     N  GGGG"
echo " "


echo "N    N   11  M      M M       M"
echo "N N  N   11  MM    MM MM     MM"
echo "N  N N   11  M M  M M M M  M M"
echo "N   NN   11  M  MM  M M  MM  M"
echo "N    N   11  M      M M      M"
echo " "

echo "DDDD        AA     SSSSS  H   H  BBBB    OOO      AA   RRRR   DDDD"
echo "D   D      A  A    S    S H   H  B   B  O   O    A  A  R   R  D   D"
echo "D    D    A    A   S      H   H  B   B  O   O   A    A R   R  D    D"
echo "D    D    AAAAAA   SSSSSS HHHHH  BBBB   O   O   AAAAAA RRRR   D    D"
echo "D    D    A     A       S H   H  B   B  O   o   A    A R   R  D    D"
echo "D   D     A     A  S    S H   H  B   B  O   O   A    A R   R  D   D"
echo "DDDD      A     A  SSSSS  H   H  BBBB    OOO    A    A R   R  DDDD"

echo " "
echo "Press any key to continue"
read
clear  
echo "Installing upgrade"
sudo apt update && sudo apt full-upgrade -y && sudo apt clean
clear
echo " "

bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered) < /home/pi/testbuildn1mmdashboard/y.txt
sleep 2

echo "Performing admin init"
node-red admin init
echo "Starting node-red"
sudo  systemctl start nodered.service


echo "Enabling node-red restart"
sudo systemctl enable nodered.service
sleep 2
clear
echo " "
echo "Installing Git"
sudo apt-get install git 
sleep 2
clear
echo " "
echo "Installing sqlite3"
sudo apt-get install sqlite3
sleep 2
rm qsos
clear

echo "Creating databases"
 
python3 createqsos.py
sleep 3
clear
echo " "
echo "Adding nodes"
sleep 2
cd /home/pi/.node-red

npm install node-red-contrib-hourglass > npmlog.txt
npm install node-red-contrib-msg-speed >> npmlog.txt
npm install node-red-contrib-play-audio >> npmlog.txt
npm install node-red-node-smooth >> npmlog.txt
npm install node-red-node-sqlite >> npmlog.txt
npm install node-red-node-ui-table >> npmlog.txt
npm install node-red-contrib-web-worldmap >> npmlog.txt
npm install node-red-dashboard >> npmlog.txt
npm install node-red-contrib-string >> npmlog.txt
npm install node-red-contrib-ui-led >> npmlog.txt
npm install node-red-contrib-unit-converter >> npmlog.txt
npm install node-red-contrib-loop-processing >> npmlog.txt
npm install node-red-node-geofence >> npmlog.txt
npm install node-red-contrib-moment >> npmlog.txt

clear
echo " "
echo "You must now edit setting.js to change projects to true"
echo "Press enter to continue then enter sudo nano settings.js"

read

echo "sudo nano /home/pi/.node-red/settings.js"
sudo nano /home/pi/.node-red/settings.js
echo " "
echo " "
echo "Time to reboot the pi"
echo "Press any key to continue"
read
sudo shutdown -r now




