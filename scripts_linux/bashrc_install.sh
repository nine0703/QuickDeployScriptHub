#!/bin/bash

# 非强制
#cp conf/.bashrc ~/

# 强制覆盖
cp -f conf/.bashrc ~/

# shellcheck disable=SC1090
source ~/.bashrc