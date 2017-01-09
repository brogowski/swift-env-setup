#!/bin/bash
echo "LANGUAGE=en_US.UTF-8" >> /etc/default/locale
echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale
echo "LC_CTYPE=en_US.UTF-8" >> /etc/default/locale
apt-get update
apt-get install -y dictionaries-common
/usr/share/debconf/fix_db.pl
apt-get install -y xfce4 xdm
apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
apt-get install gnome-icon-theme-full tango-icon-theme
echo "allowed_users=anybody" > /etc/X11/Xwrapper.config
