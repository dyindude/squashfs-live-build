#WIP, proof of concept (seems to work in virtualbox)
mkdir /live-rebuild
mount --bind / /live-rebuild
mksquashfs /live-rebuild /live-rebuild.squashfs -e 'live-rebuild.squashfs'
umount /live-rebuild
mount /dev/sdb2 /mnt
cp /live-rebuild.squashfs /mnt/live/fs.squashfs
sync
umount /mnt
