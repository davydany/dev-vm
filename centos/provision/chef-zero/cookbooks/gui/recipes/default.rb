execute 'install-gnome' do
    command "
        yum groups install -y 'GNOME Desktop'
        yum groups install -y 'X Windows System'
        systemctl set-default graphical.target
    "
end

execute 'install-vbox-linux-additions' do
    command '/shared/VBoxLinuxAdditions.run'
end 

reboot 'gnome-requires-reboot' do
    action :reboot_now
end 