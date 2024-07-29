#!/bin/bash

command -v apt >/dev/null 2>&1 || { echo >&2 "apt 命令未找到。请先安装 apt 或确保其在系统路径中。"; exit 1; }

# 清华源
TSINGHUA_SOURCE="deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse"

# 覆盖 /etc/apt/sources.list 文件
echo "$TSINGHUA_SOURCE" > /etc/apt/sources.list