#!/bin/bash

command -v pacman >/dev/null 2>&1 || { echo >&2 "pacman 命令未找到。请先安装 pacman 或确保其在系统路径中。"; exit 1; }

BLACKARCH='[BlackArch]
           SigLevel = Optional TrustAll
           Server = https://mirrors.tuna.tsinghua.edu.cn/blackarch/$repo/os/$arch'

echo "$BLACKARCH" >> /etc/pacman.conf

sudo pacman -Syu
sudo pacman -S blackarch-keyring
yay -S blackarch-mirrorlist