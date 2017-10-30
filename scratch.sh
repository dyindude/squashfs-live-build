mkdir -p work/chroot
cd work
sudo debootstrap --arch=amd64 xenial chroot
cd chroot
sudo cp /etc/resolv.conf etc/resolv.conf
sudo cp /etc/apt/sources.list etc/apt/sources.list
sudo cp ../../bootstrap-squashfs.sh .
sudo chroot . /bin/bash -c "su - -c 'sh /bootstrap-squashfs.sh'"
cd ..
cd ..
mkdir -p work/image/efi/boot
sudo cp /usr/lib/SYSLINUX.EFI/efi64/syslinux.efi work/image/efi/boot/bootx64.efi
sudo cp /usr/lib/syslinux/modules/efi64/* work/image/efi/boot/.
sudo cp work/chroot/boot/vmlinuz* work/image/vmlinuz
sudo cp work/chroot/boot/initrd* work/image/initrd.lz
sudo mksquashfs work/chroot work/image/fs.squashfs
