# manjaro

```
sudo tee /etc/pacman.d/mirrorlist << EOF
Server = http://mirrors.tuna.tsinghua.edu.cn/manjaro/stable/\$repo/\$arch
Server = https://mirrors.ustc.edu.cn/manjaro/stable/\$repo/\$arch

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
    nmap iftop openbsd-netcat net-tools\
    tcpdump wireshark-qt\
    visual-studio-code-bin google-chrome\
    wps-office ttf-wps-fonts\
    netease-cloud-music vlc\
    shadowsocks-qt5\
    foxitreader\
    typora\
    docker\

```

有问题的软件（建议暂时不装）

- virtualbox：之前导致了无法启动
- electronic-wechat：反复扫码

### 起停服务：默认不自动启动

```
sudo systemctl start docker
sudo systemctl status docker
```

## 设置 shadowsocks 和 chrome

从网盘下载两个配置文件，并导入。

# bios时间和系统时间同步（解决linux和win差8小时的问题）

```
# 显示硬件时间，需要确认是UTC还是LOCAL
sudo hwclock --show
# 设置硬件时间
sudo hwclock --set --date="05/11/19 13:45"
# 把硬件时间同步到系统时间
sudo hwclock --hctosys
```

# 修改Manjaro文件夹的默认打开程序

问题：自从安装了 VSCode，现在打开文件夹，都是用VSCode打开

```
# 显示默认的打开的软件
xdg-mime query default inode/directory
# 设置文件夹的打开方式为默认的方式，org.gnome.Nautilus.desktop 是我电脑的默认打开程序
xdg-mime default  org.gnome.Nautilus.desktop inode/directory  
```

# virtualbox配置

- 先升级系统 `sudo pacman -Syyu`
- 安装内核头文件 `sudo pacman -S linux-headers` 选择合适的版本，当前是 `linux-419`
- 挂载光盘，然后安装 `sudo ./VBoxLinuxAdditions.run`
- 加入群组 `sudo usermod -a -G vboxsf chuqq`
- 允许在共享文件夹创建软链接 `VBoxManage setextradata manjaro VBoxInternal2/SharedFoldersEnableSymlinksCreate/temp 1` 查看效果 `VBoxManage getextradata manjaro enumerate`
- 在virtualbox主界面中的虚拟机上右键，“创建桌面快捷方式”。
- 后续启动虚拟机时，以管理员身份运行桌面上的虚拟机快捷方式即可。

# 修复启动项

## 修复grub

经常windows更新后就没有grub了，修复方法如下

```bash
lsblk
sudo mkdir /mnt/manjaro
sudo mount /dev/nvme0n1p6 /mnt/manjaro/
sudo mount /dev/nvme0n1p1 /mnt/manjaro/boot/efi/
sudo mount --bind /dev /mnt/manjaro/dev/
sudo mount --bind /proc /mnt/manjaro/proc
sudo mount --bind /sys /mnt/manjaro/sys
cd /mnt/manjaro/
sudo chroot .

pacman -Scc
sudo pacman -Sy
sudo pacman -S linux
```

lsblk结果参考：
```
NAME        MAJ:MIN RM    SIZE RO TYPE MOUNTPOINT
loop0         7:0    0   75.4M  1 loop /run/miso/sfs/livefs
loop1         7:1    0  312.6M  1 loop /run/miso/sfs/mhwdfs
loop2         7:2    0 1000.1M  1 loop /run/miso/sfs/desktopfs
loop3         7:3    0  475.5M  1 loop /run/miso/sfs/rootfs
sda           8:0    1     15G  0 disk 
├─sda1        8:1    1    1.9G  0 part /run/miso/bootmnt
└─sda2        8:2    1      4M  0 part 
nvme0n1     259:0    0    477G  0 disk 
├─nvme0n1p1 259:1    0    100M  0 part 
├─nvme0n1p2 259:2    0     16M  0 part 
├─nvme0n1p3 259:3    0     80G  0 part 
├─nvme0n1p4 259:4    0    150G  0 part /run/media/manjaro/work
├─nvme0n1p5 259:5    0    150G  0 part 
├─nvme0n1p6 259:6    0   85.1G  0 part 
├─nvme0n1p7 259:7    0    512M  0 part 
├─nvme0n1p8 259:8    0   10.2G  0 part 
└─nvme0n1p9 259:9    0      1G  0 part 
```

## 修复matebook13的启动项

1. 以管理员权限运行cmd `mountvol z: /S`
1. booice -> UEFI -> 修改启动序列 -> 添加 -> 选择`\EFI\manjaro\grubx64.efi` 名字改为manjaro -> 保存当前启动项设置&保存全局设置
1. 重启，按F12进入启动项菜单，会比之前多一个manjaro

# wsl配置

- 开启sshd
    - `ssh-keygen -A`
    - `/usr/sbin/sshd -D &`
- 默认使用vim
    - `echo "alias vi=vim" >> ~/.bashrc`
    - `source ~/.bashrc`

# 双显卡驱动

https://blog.csdn.net/ytingone/article/details/82535090

### 说明
Intel+Nvidia在Linux下的支持并不是很好，如果配置不当会出现耗电增加或是屏幕glich等问题，有几种方案可以实现双显卡的和谐共存，Manjaro自带bumblebee，通过bumblebee实现Nvidia驱动的按需调用

### 安装步骤

安装Manjaro时，如果没有特别选择，默认是不会自动安装Intel与Nvidia的显卡驱动的，所以我们需要在系统安装完毕后手动安装两种驱动.

安装方式非常简单，在设置中，选择“Manjaro Settings Manager”->“Hardware Configuration”，然后点击“Auto Install Proprietary Driver”按钮即可
安装过程很快，安装结束后重启即可

### 测试与Debug
安装完毕后，先验证一下自己当前日常使用的账户是否加入了bumblebee用户组

### 判断用户是否在某个组下

    groups $user_name
 
### 如果不在，使用下面的命令加入

    usermod -a -G bumblebee $user_name

然后尝试使用optirun

### 先使用集成显卡测试

    glxgears
 
### 再使用Nvidia显卡测试

    optirun glxgears

# yaourt 暂时好像还不需要。

```
sudo pacman -S yaourt
```

# 不要折腾 deepin 桌面了，一堆问题。

```
yaourt -S deepin-wechat
yaourt -S deepin-wine-tim
```
