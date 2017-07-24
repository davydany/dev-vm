execute 'yum-group-install-gui' do
    command "
        yum groups install -y 'GNOME Desktop'
        yum groups install -y 'X Windows System'
        systemctl set-default graphical.target
        startx
    "
end