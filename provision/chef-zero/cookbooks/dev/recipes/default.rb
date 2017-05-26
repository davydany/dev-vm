# package 'epel-release' do
#   action :install
# end
epel_centos7_rpm_url = 'https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm'

remote_file '/tmp/epel-release-latest-7.noarch.rpm' do
  source epel_centos7_rpm_url
  action :create
end

rpm_package '/tmp/epel-release-latest-7.noarch.rpm' do
  action :install
end

execute 'install-development-tools' do
  command 'yum groupinstall -y "Development Tools"'
end

packages_to_install = %w(
    asciidoc 
    autoconf
    curl-devel
    expat-devel
    gettext-devel
    openssl-devel
    perl-devel
    xmlto
    zlib-devel
)

#    dh-autoreconf
#    docbook2X

packages_to_install.each do |pkg|
  package pkg do
    action :install
  end
end