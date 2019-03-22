1. 安装virtualbox、vagrant，重启电脑

1. 创建目录vagrant_ubuntu1804，进入目录后
```
# vagrant box add http://mirrors.ustc.edu.cn/ubuntu-cloud-images/bionic/20190312.1/bionic-server-cloudimg-amd64-vagrant.box --name ubuntu/bionic
vagrant up
```

1. 设置private_key为单用户可读

1. 配置mobaxterm/xshell的vagrant ssh，选择private_key
