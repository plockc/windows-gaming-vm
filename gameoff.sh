#!/bin/bash

if [[ $(virsh list | grep gamingvm) == "" ]]
then
exit 1
fi

virsh detach-device gamingvm keyboard-corsair.xml
virsh detach-device gamingvm mouse-etecity.xml
virsh detach-device gamingvm audio.xml
virsh detach-device gamingvm controller.xml
virsh detach-device gamingvm blueray.xml
#virsh detach-device gamingvm usb-drive.xml
virsh shutdown gamingvm
