# testbuildn1mmdashboard

These files will update the raspberry pi code, add node-red, add git, add sqlite3, build the qsos databae, 
open the editor to settings.js to modify the project option to true. The reboot the Pi.

Prepare a new raspberry pi image.

Using SSH run raspi-config and activate the VNC Interface and set the VNC display resolution to 1280 x 720.

Reboot the pi. When it boots back up use VNC Viewer to access the Pi.

To use:
    1) Download the files to /home/pi/Downloads and use file manager properties on the zip file to extract the files withe the Archive option. 
       Then move the files to /home/pi. 
    2) change the properties of buildn1mmdashboard.sh to anyone and execute.
    3) run the command ./buildn1mmdashboard.sh and follow the prompts.
