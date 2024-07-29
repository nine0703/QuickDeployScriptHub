#!/bin/bash

BLACKARCH='[BlackArch]
           SigLevel = Optional TrustAll
           Server = https://mirrors.tuna.tsinghua.edu.cn/blackarch/$repo/os/$arch'

echo "$BLACKARCH" >> /etc/pacman.conf

sudo pacman -Syu
sudo pacman -S blackarch-keyring
yay -S blackarch-mirrorlist