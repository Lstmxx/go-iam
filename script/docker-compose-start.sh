#!/bin/bash

# 指定包含yml文件的目录
yml_dir="$PWD/../docker-compose"

echo "当前目录是：$yml_dir"

cd $yml_dir

# 遍历目录下的所有yml文件
for file in $(ls ./*.yml); do
    # 获取文件名（不包括路径和后缀）
    filename=$(basename $file .yml)
    echo "Processing $filename.yml"
    
    # 在该目录下执行docker compose命令
    
    docker-compose -f $filename.yml up -d
    
    # 如果需要，可以在这里添加其他命令或操作
    
    echo "Finished processing $filename.yml"
done