# David's Development VM

Uses BentoBox's CentOS 7.1, and sets up a GUI to do work on

## Setup

```
git clone https://github.com/davydany/dev-vm.git
cd dev-vm;
vagrant up
```

## User Credentials

You can login to your system with the following credentials:

```
Username: vagrant
Password: vagrant
```

## Caveats

- When the system is done installing, it will actually hang. You will need to press `[CTRL]+[C]` to break the provisioning process. Then run `vagrant reload` and you should be able to get in.

- You will need to install VirtualBox's Guest Tools manually.