#!/bin/bash

# exit script if return code != 0
set -e

# install pre-reqs
pacman -Syu --ignore filesystem --noconfirm

# call aur packer script
source /root/packer.sh

# set permissions
chown -R nobody:users /usr/bin/tvheadend /run/tvheadend.pid
chmod -R 775 /usr/bin/tvheadend /run/tvheadend.pid

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
