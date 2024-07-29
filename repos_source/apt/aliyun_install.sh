#!/bin/bash

# aliyun
ALIYUN_SOURCE="deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse"

# 覆盖 /etc/apt/sources.list 文件
echo "$ALIYUN_SOURCE" > /etc/apt/sources.list