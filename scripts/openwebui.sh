#!/bin/env bash

# 调用 activate 脚本激活 openwebui 环境
eval "$(/home/track/miniconda3/bin/conda shell.zsh hook)"
conda activate webui

export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897

# 在后台启动 open-webui serve
open-webui serve --port 11451 > /dev/null 2>&1 &

# 检查端口 11451 是否在监听
while ! netstat -an | grep -q "11451.*LISTEN"; do
    sleep 1
done

xdg-open http://localhost:11451
