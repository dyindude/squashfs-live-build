DEVICE="$1"
exit
mkfs.fat -F 32 "$DEVICE"1
mount "$DEVICE"1 /mnt
cp -d -r -f -v work/image/efi work/image/vmlinuz work/image/initrd.lz /mnt/.
umount /mnt
mkfs.ext4 "$DEVICE"2
mount "$DEVICE"2 /mnt
mkdir -p /mnt/live
cp work/image/fs.squashfs /mnt/live/.
