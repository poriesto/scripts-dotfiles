#!/bin/bash
#


virsh --connect=qemu:///system start win11-gpu
sleep 15
virsh -c qemu:///system attach-device 'win11-gpu' --file /home/poriesto/Documents/vm-xml/devices/mouse-dareu.xml
virsh -c qemu:///system attach-device 'win11-gpu' --file /home/poriesto/Documents/vm-xml/devices/adata-ssd.xml
virsh -c qemu:///system attach-device 'win11-gpu' --file /home/poriesto/Documents/vm-xml/devices/durgod-kbd.xml
virsh -c qemu:///system attach-device 'win11-gpu' --file /home/poriesto/Documents/vm-xml/devices/realtek-usb-nic.xml
