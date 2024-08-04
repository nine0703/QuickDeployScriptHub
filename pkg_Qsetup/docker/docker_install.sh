#!/bin/bash

command -v yum >/dev/null 2>&1 || { echo >&2 "Yum 命令未找到。请先安装 yum 或确保其在系统路径中。"; exit 1; }

# 卸载命令
#yum remove docker \
#                   docker-client \
#                   docker-client-latest \
#                   docker-common \
#                   docker-latest \
#                   docker-latest-logrotate \
#                   docker-logrotate \
#                   docker-selinux \
#                   docker-engine-selinux \
#                   docker-engine \
#                   docker-ce

yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sed -i 's/download.docker.com/mirrors.aliyun.com\/docker-ce/g' /etc/yum.repos.d/docker-ce.repo
yum makecache fast
yum install -y docker-ce
