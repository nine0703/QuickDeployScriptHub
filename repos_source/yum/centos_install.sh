#!/bin/bash

# 检查是否已安装所需的命令
command -v yum >/dev/null 2>&1 || { echo >&2 "Yum 命令未找到。请先安装 yum 或确保其在系统路径中。"; exit 1; }
command -v wget >/dev/null 2>&1 || { echo >&2 "Wget 命令未找到。正在尝试安装..."; yum install -y Wget; }

# 缓存更新
yum makecache

# 切换到指定目录
cd /etc/yum.repos.d || { echo >&2 "无法切换到 /etc/yum.repos.d 目录。"; exit 1; }

# 备份原本 yum 源文件
if [ -f Centos-Base.repo ]; then
    mv Centos-Base.repo Centos-Base.repo.backup
else
    echo >&2 "未找到 Centos-Base.repo 文件，无需备份。"
fi

# 下载新的 yum 源文件，并重命名，yum makecache 即可
wget -O Centos-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo || { echo >&2 "下载新的 yum 源文件失败。"; exit 1; }

exit 0
