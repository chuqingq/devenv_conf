# lubuntu_configuration

## installation


## configuration

### apt source

config apt source first:

```
https://mirrors.aliyun.com/ubuntu/
https://mirrors.aliyun.com/help/ubuntu
```

## install linuxbrew

```
http://linuxbrew.sh/
```

通过brew安装：
```
jdk
nodejs
golang
mongodb
```

## software

```
# uninstall
sudo apt remove abiword gnumeric sylpheed transmission simple-scan pidgin
# install
sudo apt install vlc libreoffice terminator chromium-browser catfish zeal pepperflashplugin-nonfree meld
# install flashlplugin
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

卸载不用的输入法：
sudo apt remove fcitx-pinyin fcitx-sunpinyin fcitx-table

## 网易云音乐

http://music.163.com/#/download

## sublimetext

http://www.sublimetext.com/docs/3/linux_repositories.html

## vscode

https://code.visualstudio.com/Download

# openresty

http://openresty.org/en/linux-packages.html

## TODO hosts

# 卸载lubuntu相关

sudo apt remove lubuntu*

# 安装lxde

sudo apt install lxde-core lxde-common lxdm
sudo dpkg-reconfigure lxdm
替换lxde-rc.xml

# 安装source-code-pro字体

下载地址：`https://github.com/adobe-fonts/source-code-pro/downloads`
安卓步骤：`http://blog.csdn.net/android_hasen/article/details/50523013`

    unzip SourceCodePro_FontsOnly-1.013.zip
    mkdir ~/.fonts
    cp SourceCodePro_FontsOnly-1.013/OTF/* ~/.fonts/
    fc-cache -fv

# 使用fish

    sudo apt install fish
    sudo vi /etc/password
    # /usr/bin/fish


