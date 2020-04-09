
# Device Monitoring and Killing  

This script checks all hardware ports on your computer. if some ports are changed thier state by adding or removing a device, it 
triggers the shell execution to turn off the computer. 

You can change the commands which gets executed by the trigger.

For example if have commented out the shred command which shreds a drive ;)

This was inspired by Mr.Robot.
  
## Installation  
```
$ git clone https://github.com/strider-paff-shell/DeviceKillSwitch.git  
$ chmod +x install.sh
$ sudo install.sh
$ shutdown -r now
```
## Uninstallation
```
$ rm -rf /opt/usbkillmon
$ update-rc.d usbkillmond remove
$ rm /etc/init.d/usbkillmond
```
## Start & Stop
```
$ service usbkillmond start # to start
$ service usbkillmond stop # to stop
```
