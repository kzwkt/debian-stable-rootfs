sudo apt-get update
sudo apt-get install -y debootstrap
codename="noble"
#codename="oracular"
echo $codename > codename
sudo debootstrap --variant=minbase --arch=amd64 $codename rootfs http://archive.ubuntu.com/ubuntu
sudo rm -rf rootfs/var/cache/apt
sudo tar -czf rootfs.tar.gz -C rootfs .

