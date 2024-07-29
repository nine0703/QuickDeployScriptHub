#!/bin/bash

command -v apt >/dev/null 2>&1 || { echo >&2 "apt 命令未找到。请先安装 apt 或确保其在系统路径中。"; exit 1; }

# 163源
NETEASE_SOURCE="deb http://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse"

# 覆盖 /etc/apt/sources.list 文件
echo "$NETEASE_SOURCE" > /etc/apt/sources.list