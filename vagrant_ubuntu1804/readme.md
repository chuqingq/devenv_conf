1. 安装virtualbox、vagrant，重启电脑

1. 创建目录vagrant_ubuntu1804，进入目录后
```
# 下载box
wget -c http://mirrors.ustc.edu.cn/ubuntu-cloud-images/bionic/current/bionic-server-cloudimg-amd64-vagrant.box

# 添加box
vagrant box add ./bionic-server-cloudimg-amd64-vagrant.box --name ubuntu/bionic

# 如果之前有ubuntu/bionic的box则删除：
vagrant box list
vagrant box remove ubuntu/bionic
# 然后启动
vagrant up
```

1. 设置private_key为单用户可读

1. 配置mobaxterm/xshell的vagrant ssh，选择private_key

1. 安装相关软件

    # sudo apt update
    # sudo apt install -y gcc g++ make htop netcat fish rustc cargo redis-server mongodb
    # update-rc.d redis-server disable
    # update-rc.d mongodb disable
