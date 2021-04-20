########################
# Copyright(c) 2014-2017 DongGuan HeWei Communication Technologies Co. Ltd.
# file    udisk_remove.sh
# brief   
# author  Shi Kai
# version 1.0.0
# date    03Jun17
########################
#!/bin/sh
echo "/dev/$MDEV PLUG OUT" >> /dev/ttymxc0
umount -l /mnt/UPAN
if [ `cat /tmp/update_status` == "2" ]; then 
	echo "Update Success, reboot now!!!" >> /dev/ttymxc0
	reboot
elif [ `cat /sys/class/android_usb_accessory/android0/functions` == "mass_storage" ]; then 
	echo "mass storage mode!!!" >> /dev/ttymxc0
fi
rm -f /tmp/update_status

