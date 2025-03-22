sudo apt-get update
sudo apt-get install -y debootstrap
codename="oracular"
echo $codenae > release
sudo debootstrap --variant=minbase --arch=amd64 $codename rootfs http://archive.ubuntu.com/ubuntu
sudo tar -czf rootfs.tar.gz -C rootfs .

