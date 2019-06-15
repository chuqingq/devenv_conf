1. 安装virtualbox、vagrant，重启电脑

1. 
```
# 下载box
wget -c https://vagrantcloud.com/generic/boxes/arch/versions/1.9.14/providers/virtualbox.box -O generic_arch.box

# 添加box
vagrant box add ./generic_arch.box --name generic/arch

# 如果之前有相同的box则删除：
vagrant box list
vagrant box remove generic/arch

# 然后启动
vagrant up

# 然后ssh
vagrant ssh
```

1. 修改arch的源

```
sudo tee /etc/pacman.d/mirrorlist << EOF
Server = https://mirrors.ustc.edu.cn/archlinux/\$repo/os/\$arch

EOF

sudo tee -a /etc/pacman.conf << EOF
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch

EOF
```

1. 更新
```
sudo pacman -Sy
```
