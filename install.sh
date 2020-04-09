#!/usr/bin/env bash

if [ "`id -u`" -ne 0 ]; then
	complain "Start this installer with root privileges"
	exit 1
fi

mkdir -p "/opt/usbkillmon/"
echo "Creating files..."
cp usbkillmonitor.py "/opt/usbkillmon/usbkillmonitor.py"
cp usbkillmond.sh "/opt/usbkillmon/usbkillmond.sh"

chmod +x "/opt/usbkillmon/usbkillmond.sh"

echo "add usbkillmond to init.d..."
ln -s /opt/usbkillmon/usbkillmond.sh /etc/init.d/usbkillmond

update-rc.d usbkillmond defaults

echo "done"