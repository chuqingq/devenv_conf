# lubuntu_configuration

## installation


## configuration

### apt source

config apt source first:

```
https://mirrors.aliyun.com/ubuntu/
https://mirrors.aliyun.com/help/ubuntu
```

apt install softwares:

```
jdk
gcc
nodejs
golang
mongodb
```

## install linuxbrew

```
http://linuxbrew.sh/
```

## software

```
# uninstall
sudo apt remove abiword gnumeric sylpheed transmission simple-scan pidgin
# install
sudo apt install flashplugin-installer vlc libreoffice terminator chromium-browser catfish
```

zeal
```
$ sudo add-apt-repository ppa:zeal-developers/ppa
$ sudo apt-get update
$ sudo apt-get install zeal
```

## flash

```
sudo apt install pepperflashplugin-nonfree
sudo update-pepperflashplugin-nonfree --install
```

## config

```
.config/leafpad/leafpadrc
lxterminal.conf
openbox/lubuntu-rc.xml
.config/terminator/config
```

## 解决中文输入法大黑框的问题

```
sudo apt remove fcitx-module-kimpanel
sudo reboot
```

## 安装autossh

拷贝autossh到$GOPATH/bin/autossh
apt install expect
编辑~/.autosshrc

## 安装linux搜狗输入法

http://pinyin.sogou.com/linux/
直接安装64位deb包，注销即可。

