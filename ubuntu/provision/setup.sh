

yum -y install epel-release
cd /tmp
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -ivh epel-release-latest-7.noarch.rpm

# install development tools
yum groupinstall -y 'Development Tools'

# install git (from source)
yum install -y autoconf dh-autoreconf curl-devel expat-devel gettext-devel \
  openssl-devel perl-devel zlib-devel

yum install -y asciidoc xmlto docbook2X

ln -s /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi

mkdir /tmp/git-source 
cd /tmp/git-source
wget https://github.com/git/git/archive/v2.11.0.tar.gz
tar -xzf v2.11.0.tar.gz
cd /tmp/git-source/git-2.11.0
make configure
./configure --prefix=/usr
make all doc info
make install install-doc install-html install-info

# install linux brew
sudo yum install -y ruby 
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
PATH="$HOME/.linuxbrew/bin:$PATH"
echo 'export PATH="/home/vagrant/.linuxbrew/bin:$PATH"' >>/home/vagrant/.bash_profile
echo 'export MANPATH="/home/vagrant/.linuxbrew/share/man:$MANPATH"' >>/home/vagrant/.bash_profile
echo 'export INFOPATH="/home/vagrant/.linuxbrew/share/info:$INFOPATH"' >>/home/vagrant/.bash_profile

# install the GUI
yum -y groups install "GNOME Desktop" 
yum groups install -y "X Window System"
systemctl set-default graphical.target
startx
