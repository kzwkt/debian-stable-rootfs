sudo apt-get update
sudo apt-get install -y debootstrap
codename="stable"
#codename="trixie"
echo $codename > codename
sudo debootstrap --variant=minbase --arch=amd64 $codename rootfs http://deb.debian.org/debian
sudo rm -rf rootfs/var/cache/apt
sudo tar -czf rootfs.tar.gz -C rootfs .
