#!/usr/bin/env python
# -*- coding: utf-8 -*-
import subprocess, time


class UsbKillMonitor(object):
        __devices = None

        def __init__(self):
                self.__devices = self.__listDevices()

        def __listDevices(self):

                return subprocess.Popen(
                        ['lsusb'],
                        stdin=subprocess.PIPE,
                        stdout=subprocess.PIPE,
                        stderr=subprocess.PIPE
                ).communicate()

        def monitor(self):
                while True:
                        devices = self.__listDevices()
                        if self.__devices != devices:
                                print("USB Manipulation detected")
                                subprocess.call(['logger', "USB Manipulation detected --->", str(devices)])
                                #uncomment this line if you want to destroy your harddrive and enter your harddrive e.g. /dev/sda
                                #subprocess.call(['shred', "-vn", "1", "<HDD>"])
                                subprocess.call(['shutdown', "-h", "now"])
                                time.sleep(1)


usbm = UsbKillMonitor()
usbm.monitor()
