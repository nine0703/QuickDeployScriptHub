#!/bin/bash

# 163源
NETEASE_SOURCE="deb http://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse"

# 覆盖 /etc/apt/sources.list 文件
echo "$NETEASE_SOURCE" > /etc/apt/sources.list