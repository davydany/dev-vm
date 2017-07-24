execute 'install-gnome' do
    command "
    apt-get update
    apt-get install ubuntu-desktop
    "
end

execute 'install-vbox-linux-additions' do
    command '/shared/VBoxLinuxAdditions.run'
end 

reboot 'gnome-requires-reboot' do
    action :reboot_now
end 