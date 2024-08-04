#!/bin/bash

command -v yum >/dev/null 2>&1 || { echo >&2 "Yum 命令未找到。请先安装 yum 或确保其在系统路径中。"; exit 1; }

# 缓存更新
yum makecache
yum install -y mysql-server

mysql --version