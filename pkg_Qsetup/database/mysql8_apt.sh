#!/bin/bash

command -v apt >/dev/null 2>&1 || { echo >&2 "apt 命令未找到。请先安装 apt 或确保其在系统路径中。"; exit 1; }

#apt update
#apt install wget gnupg lsb-release
#
#wget https://repo.mysql.com//mysql-apt-config_0.8.20-1_all.deb
#dpkg -i mysql-apt-config_0.8.20-1_all.deb
## gpg密钥
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 76F1A20FF987672F

apt install mysql-server

mysql --version