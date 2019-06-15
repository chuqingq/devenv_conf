1. 安装virtualbox、vagrant，重启电脑

1. 
```sh
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

```sh
sudo tee /etc/pacman.d/mirrorlist << EOF
Server = https://mirrors.ustc.edu.cn/archlinux/\$repo/os/\$arch

EOF

sudo tee -a /etc/pacman.conf << EOF
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch

EOF
```

1. 更新
```sh
sudo pacman -Sy
```

### 如果无法共享目录

1. box需要和virtualbox版本匹配，例如6.0.8
1. 重装virtualbox后需要重启
1. 启动时以管理员权限运行powershell，然后vagrant up。如果先以普通用户启动过virtualbox，需要傻屌相关进程，重新以管理员用户启动virtualbox，或者运行vagrant up
1. 验证共享目录ok： `cd temp && ln -s already_dir test && rm -r test`
