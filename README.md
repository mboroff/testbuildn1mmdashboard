# testbuildn1mmdashboard

These files will:
  1) update the raspberry pi code
  2) add node-red, add sqlite3
  3) build the qsos database
  4) add the additional nodes needed
  5) open the editor to settings.js to modify the project option to true. 
  6) When the edit is completed the Pi will reboot.

Prepare a new raspberry pi image.

SSH into the Pi and enter this command

git clone https://github.com/mboroff/testbuildn1mmdashboard && sudo chmod +x testbuildn1mmdashboard/buildn1mmdashboard.sh  &&  cd testbuildn1mmdashboard && ./buildn1mmdashboard.sh

Then follow the ptompts.

When the Pi rebots access node-red and clone the project.
