# manjaro

```
sudo tee /etc/pacman.d/mirrorlist << EOF
Server = http://mirrors.163.com/archlinux/\$repo/os/\$arch
Server = http://mirrors.ustc.edu.cn/archlinux/\$repo/os/\$arch
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/\$repo/os/\$arch

EOF

sudo tee -a /etc/pacman.conf << EOF
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch

EOF
```

## 更新源列表

```
sudo pacman -Sy
```

## 防止 PGP 签名错误

```
sudo pacman -S archlinuxcn-keyring
```

## 更新 pacman 数据库并全面更新系统

```
sudo pacman -Syyu
```

# software

## 设置 gnome-terminal 和 gedit 字体

在上面更新系统后才有相应的字体。

## 开启触摸板自然滚动

## 设置 disks 自动挂载

## 设置快捷键

```
设置 super+s
gnome-terminal ctrl+alt+t
nautilus super+e
```

## 去掉 gnome-terminal 的 beep 声

## 输入法

```
sudo pacman -S fcitx-im fcitx-configtool fcitx-sogoupinyin

tee -a ~/.xprofile << EOF
# chuqq fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

EOF
```

设置输入法翻页：,和.

## 软件

### 查询

```
sudo pacman -Ss visual-studio-code
sudo pacman -Si visual-studio-code-bin

sudo pacman -S vim go nodejs gcc make clang jdk8\
    nmap iftop openbsd-netcat\
    tcpdump wireshark-qt\
    visual-studio-code-bin google-chrome\
    wps-office ttf-wps-fonts\
    netease-cloud-music\
    shadowsocks-qt5\
    foxitreader\
    typora\
    docker\

```

有问题的软件（建议暂时不装）

- virtualbox：之前导致了无法启动
- electronic-wechat：反复扫码

### 起停服务：默认不自动启动

sudo systemctl start docker
sudo systemctl status docker

## 设置 shadowsocks 和 chrome

从网盘下载两个配置文件，并导入。

# yaourt 暂时好像还不需要。

sudo pacman -S yaourt

# 不要折腾 deepin 桌面了，一堆问题。

yaourt -S deepin-wechat
yaourt -S deepin-wine-tim
