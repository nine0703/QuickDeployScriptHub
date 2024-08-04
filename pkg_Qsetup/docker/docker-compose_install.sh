#!/bin/bash

command -v curl >/dev/null 2>&1 || { echo >&2 "curl 命令未找到。请先安装 curl 或确保其在系统路径中。"; exit 1; }

url="https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)"
curl -L "$url" > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose