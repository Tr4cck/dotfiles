#!/bin/env bash

# 获取已安装的包名列表，并存入一个数组
installed_packages=($(paru -Qeq))

# 目标文件夹，修改为你想要遍历的文件夹路径
target_directory=$HOME/.cache/paru/clone

# 遍历目标文件夹中的所有子文件夹
for dir in "$target_directory"/*; do
  if [ -d "$dir" ]; then
    folder_name=$(basename "$dir")
    # echo $folder_name

    # 检查文件夹名称是否在已安装包列表中
    if [[ ! " ${installed_packages[@]} " =~ " ${folder_name} " ]]; then
      # 如果不在安装包列表中，删除该文件夹
      printf "\033[1;31m`basename $dir`\033[0m removed\n"
      rm -rf "$dir"
    else
      printf "\033[1;34m`basename $dir`\033[0m installed\n"
    fi
  fi
done
