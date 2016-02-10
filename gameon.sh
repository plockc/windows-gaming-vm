#!/bin/bash

if [[ $(virsh list | grep gamingvm) != "" ]]
then
exit 1
fi

echo 1 > /sys/module/kvm/parameters/ignore_msrs

virsh start gamingvm
virsh attach-device gamingvm keyboard-corsair.xml
virsh attach-device gamingvm mouse-etecity.xml
virsh attach-device gamingvm audio.xml
virsh attach-device gamingvm controller.xml
virsh attach-device gamingvm blueray.xml
#virsh attach-device gamingvm usb-drive.xml

