#! /bin/bash

### BEGIN INIT INFO
# Provides:          USBKillMonitor
# Required-Start:    $local_fs $network
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: USBKillMonitor service
# Description:       Run USBKillMonitor service
### END INIT INFO

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting USBKillMonitor..."
    python /opt/usbkillmon/usbkillmonitor.py &
    ;;
  stop)
    echo "Stopping USBKillMonitor..."
    killall python
    ;;
  *)
    echo "Usage: /etc/init.d/usbkillmond {start|stop}"
    exit 1
    ;;
esac

exit 0