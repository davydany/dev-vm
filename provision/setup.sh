

yum -y install epel-release

yum -y groups install "GNOME Desktop" 
yum groups install -y "X Window System"
systemctl set-default graphical.target
startx

yum install -y gcc kernel-devel