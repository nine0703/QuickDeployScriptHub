#!/bin/bash

pkgManager='yum'
#pkgManager='apt'
#pkgManager='pacman'

# 常规
$pkgManager install -y curl wget nano git python proxychains4 sudo dhcpcd openssh
# 输入法
$pkgManager install -y wqy-zenhei rxvt-unicode google-pinyin axel nemo
# C语言编译环境
#$pkgManager install -y gcc gcc-c++ gcc-gfortran gcc-go gcc-java gcc-objc gcc-objc++ gcc-ada gcc-d gcc-fortran gcc-java gcc-objc gcc-objc++ gcc-ada gcc-d gcc-fortran gcc-java gcc-objc gcc-objc++ gcc-ada gcc-d gcc-fortran gcc-java gcc-objc gcc-objc++gcc-ada gcc-d gcc-fortran gcc-

