1. 安装virtualbox、vagrant，重启电脑

1. 
```
# 下载box
wget -c https://vagrantcloud.com/generic/boxes/arch/versions/1.9.14/providers/virtualbox.box -O generic_arch.box

# 添加box
vagrant box add ./generic_arch.box --name generic/arch

# 如果之前有相同的box则删除：
vagrant box list
vagrant box remove ubuntu/bionic

# 然后启动
vagrant up

# 然后ssh
vagrant ssh
```

