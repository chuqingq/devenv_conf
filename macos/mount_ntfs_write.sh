#!/bin/bash

# 1.展示出NTFS的所有磁盘
diskutil list | grep NTFS

# 2.用户输入磁盘label
read -p "please input device name: "
DEVICE_NAME=$REPLY

# 3.用户输入磁盘信息
read -p "please input device node: "
DEVICE_NODE=$REPLY

# 4.卸载磁盘
sudo diskutil unmount /Volumes/$DEVICE_NAME

# 5.创建挂载目录
sudo mkdir /Volumes/$DEVICE_NAME

# 6.挂载磁盘
sudo mount -t ntfs -o rw,auto,nobrowse /dev/$DEVICE_NODE /Volumes/$DEVICE_NAME

# 7.卸载磁盘
echo "if you want to unmount disk, please input: "
echo "sudo diskutil unmount /Volumes/$DEVICE_NAME"
# 或者在Volumes中右键，推出磁盘xxx

# 或者在/etc/fstab中增加一行：
# LABEL=chuqq1t none ntfs rw,nobrowse,noowners,noatime,nosuid
