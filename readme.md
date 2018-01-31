# 安装系统

## 安装方案1：deepin

* 安装“深度商店”，安装“深度显卡驱动管理器”，设置使用开源驱动
* 控制中心（可以不改）
    * 主题：deepin-dark
    * 光标主题：adwaita
* panel
    * 模式：高效模式
    * 位置：左
    * 大小：小

## 安装方案2：lubuntu-lubuntu*+lxde

    sudo apt remove lubuntu*
    sudo apt install lxde-core # lxde-common lxdm

## 安装方案3：ubuntuserver+lxde

    sudo apt install lxde-core lxdm xserver-xorg # lxdm可以换为lightdm

# 修改配置

## 修改源

    http://mirrors.aliyun.com
    /etc/apt/sources.list

## 安装linuxbrew

    http://linuxbrew.sh/

    jdk
    nodejs
    golang
    mongodb

## 软件

    # 卸载掉无用的软件
    sudo apt remove abiword gnumeric sylpheed transmission simple-scan pidgin
    # 安装
    sudo apt install vlc libreoffice terminator chromium-browser catfish zeal pepperflashplugin-nonfree meld
    # install flashlplugin
    sudo update-pepperflashplugin-nonfree --install

## 配置

    lxde: .config/openbox/lxde-rc.xml
    lubuntu: openbox/lubuntu-rc.xml
    leafpad: .config/leafpad/leafpadrc
    terminator: .config/terminator/config
    lxterminal: lxterminal.conf

    sudo dpkg-reconfigure lxdm # 配置登录管理器
    openbox --reconfigure # 让配置生效

## 解决中文输入法大黑框的问题

    sudo apt remove fcitx-module-kimpanel
    sudo reboot

## 安装autossh

    拷贝autossh到$GOPATH/bin/autossh
    apt install expect
    编辑~/.autosshrc

## 安装linux搜狗输入法

    http://pinyin.sogou.com/linux/
    # 直接安装64位deb包，注销即可。

    # 卸载不用的输入法：
    sudo apt remove fcitx-pinyin fcitx-sunpinyin fcitx-table

## 网易云音乐

    http://music.163.com/#/download

## sublimetext

    http://www.sublimetext.com/docs/3/linux_repositories.html

## vscode

    https://code.visualstudio.com/Download

## 安装source-code-pro字体

    下载地址：https://github.com/adobe-fonts/source-code-pro/downloads`
    安装步骤：http://blog.csdn.net/android_hasen/article/details/50523013`

    unzip SourceCodePro_FontsOnly-1.013.zip
    mkdir ~/.fonts
    cp SourceCodePro_FontsOnly-1.013/OTF/* ~/.fonts/
    fc-cache -fv

## 使用fish

    sudo apt install fish
    chsh -s /usr/bin/fish

## 安装autossh

    https://github.com/wufeifei/autossh
    sudo apt install expect
    cd ~/gopath/bin
    wget https://raw.githubusercontent.com/wufeifei/autossh/master/autossh
    chmod a+x autossh
