mount -t sys none /sys
mount -t proc none /proc
apt-get update
apt-get install casper lupin-casper linux-generic live-boot-initramfs-tools live-boot -y
#make efi/boot
#mkfs.fat -F 32 /dev/sdXXX1
#mount /dev/sdXXX1 /mnt
#mkdir -p /mnt/efi/boot
#cp /usr/lib/SYSLINUX.EFI/efi64/syslinux.efi /mnt/efi/boot/bootx64.efi
#cp /usr/lib/syslinux/modules/efi64/* /mnt/efi/boot/.
#cp initrd.lz to /mnt/
#cp vmlinuz to /mnt/
#copy fs.squashfs to a partition at live/fs.squashfs
umount /sys
umount /proc
