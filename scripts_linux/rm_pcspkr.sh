#!/bin/bash

# 卸载linux上的蜂鸣器

# 添加黑名单
echo "blacklist pcspkr" >> /etc/modprobe.d/blacklist.conf
# 临时卸载蜂鸣器
rmmod pcspkr