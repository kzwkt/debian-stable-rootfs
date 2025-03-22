apt-get update
apt-get install -y debootstrap
codename="oracular"
echo $codenae > release
debootstrap --variant=minbase --arch=amd64 $codename rootfs http://archive.ubuntu.com/ubuntu
tar -czf rootfs.tar.gz -C rootfs .

