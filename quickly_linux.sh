#!/bin/bash

# 软件安装
chmod +x pkg_Qsetup/custom.sh
source pkg_Qsetup/custom.sh
# 配置文件复制
# bashrc
chmod +x scripts_linux/bashrc_install.sh
source scripts_linux/bashrc_install.sh
# nanorc
chmod +x scripts_linux/nanorc_install.sh
source scripts_linux/nanorc_install.sh
