# 安装系统

## 安装方案：linuxmint

    sudo apt-get install language-pack-zh-hans # 中文
    安装terminator、wine
    软件管理器安装sublimetext、meld等
    下载安装网易云音乐、搜狗输入法、wps、
    安装mint-codecs：welcome -> install mint-codecs

## 安装：ubuntu

    修改为ustc和aliyun，然后更新缓存
    sougou input fonts: 32
    如果字体小（例如在2K屏上），可以整体放大：设置->字体->字体设置->文本缩放比例，改成1.1或1.2即可。

## 配置语言和输入法

    系统设置->语言设置：chinese，china，应用到整个系统
    输入法：简体中文->安装，然后sudo apt remove fonts-arphic-ukai fonts-arphic-uming
    下载搜狗输入法并安装
    Fcitx配置：保留Keyboard-Chinese和搜狗拼音两种输入法即可。
    https://pinyin.sogou.com/linux/?r=pinyin


## 安装方案：deepin

* driver
    * 我这台电脑需要使用开源驱动，否则启动时没有图形界面。
    * 恢复方法：安装xserver-xorg-video-nouveau，卸载nvidia-legacy-340xx-driver。
* panel
    * 模式：高效模式
    * 位置：左
    * 大小：小
* 深度商店
    * terminator
    * sublime text 3（需要使用DejaVu Sans Mono字体，否则中文对不齐）
    * visual studio code
    * virtualbox
    * 迅雷急速版
* 控制中心
    * qdbus com.deepin.wm  /com/deepin/wm com.deepin.wm.TileActiveWindow 1 左平铺
    * qdbus com.deepin.wm  /com/deepin/wm com.deepin.wm.TileActiveWindow 2 右平铺

## 安装方案：lubuntu-lubuntu+lxde

    sudo apt remove lubuntu*
    sudo apt install lxde-core # lxde-common lxdm


### 配置

    lxde: .config/openbox/lxde-rc.xml # TODO
    lubuntu: .config/openbox/lubuntu-rc.xml
    leafpad: .config/leafpad/leafpadrc
    terminator: .config/terminator/config
    lxterminal: lxterminal.conf

    sudo dpkg-reconfigure lxdm # 配置登录管理器
    openbox --reconfigure # 让配置生效

#### lubuntu-rc.xml快捷键

默认的Win+r快捷键不生效。因为lxsession默认应用launcher_manager设置为lxpanelctl，而应该是lxpanelctl run。可能lxsession默认应用不支持命令中有空格，因此直接修改openbox的快捷键的配置：

    ~/.config/openbox$ diff -u lubuntu-rc.xml{.bak,}
    --- lubuntu-rc.xml.bak	2015-07-05 15:17:58.132897044 +0800
    +++ lubuntu-rc.xml	2015-07-05 21:03:50.895351663 +0800
    @@ -339,6 +339,13 @@
        <action name="UnmaximizeFull"/>
        <action name="MoveResizeTo"><x>0</x><y>-0</y><width>100%</width><height>50%</height></action>
        </keybind>
    +
    +    <keybind key="W-l">
    +      <action name="Execute">
    +        <command>lubuntu-logout</command>
    +      </action>
    +    </keybind>
    +
        <!-- Keybindings for running applications on Home + E -->
        <keybind key="W-e">
        <action name="Execute">
    @@ -352,12 +359,14 @@
        <!-- Keybindings for running Run menu from Lxpanel on Home + R-->
        <keybind key="W-r">
        <action name="Execute">
    -        <command>lxsession-default launcher_manager</command>
    +        <!--<command>lxsession-default launcher_manager</command>-->
    +        <command>lxpanelctl run</command>
        </action>
        </keybind>
        <keybind key="A-F2">
        <action name="Execute">
    -        <command>lxsession-default launcher_manager</command>
    +        <!--<command>lxsession-default launcher_manager</command>-->
    +        <command>lxpanelctl run</command>
        </action>
        </keybind>
        <!-- Keybindings for running Menu from Lxpanel -->
    @@ -371,6 +380,10 @@
            <command>lxpanelctl menu</command>
        </action>
        </keybind>
    +    <!-- F10 -> fullscreen -->
    +    <keybind key="F10">
    +      <action name="ToggleMaximize"/>
    +    </keybind>
        <!-- Keybindings to toggle fullscreen -->
        <keybind key="F11">
        <action name="ToggleFullscreen"/>

然后用openbox --reconfigure使之生效

#### lxpanel配置

窗口栏只展示图标，不展示文字（占地方）

    --- panel2015-02-22 22:55:35.547920872 +0800
    +++ panel.bak2015-02-22 22:42:33.249039061 +0800
    @@ -97,14 +97,14 @@
        expand=1
        Config {
            tooltips=1
    -        IconsOnly=1
    +        IconsOnly=0
            ShowAllDesks=0
            UseMouseWheel=1
            UseUrgencyHint=1
            FlatButton=0
            MaxTaskWidth=150
            spacing=1
    -        GroupedTasks=1
    +        GroupedTasks=0
        }
    }
    
    @@ -167,9 +167,8 @@
        type = monitors
        Config {
            DisplayCPU=1
    -        DisplayRAM=1
    +        DisplayRAM=0
            CPUColor=#0000FF
    -        RAMColor=#FF0000
        }
    }


## 安装方案：ubuntuserver+lxde

    https://help.ubuntu.com/community/Installation/MinimalCD/
    sudo apt install lxde-core lxdm xserver-xorg # lxdm可以换为lightdm


# 修改配置

## 修改源

    http://mirrors.ustc.edu.cn/
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
    # 开发相关
    sudo apt install vim g++ gdb make git fish vlc terminator chromium-browser catfish zeal meld
    # 办公
    sudo apt install libreoffice
    # mintinstall
    sublimetext、meld、vscode, cheese, 等

## chrome

### googlechrome

建议直接安装google-chrome,使用自带的flashplayer,不用安装pepperflash

    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb

    sudo dpkg -i google-chrome-stable_current_amd64.deb


### chromium+flash

    sudo apt-get update
    sudo apt-get install chromium-browser
    sudo apt-get install pepperflashplugin-nonfree
    sudo update-pepperflashplugin-nonfree --install
    卸载命令：
    sudo apt-get remove chromium-browser pepperflashplugin-nonfree

## 输入法

### 安装fcitx-googlepinyin

    sudo apt-get install fcitx fcitx-googlepinyin
    # 然后注销重新登录

### 解决中文输入法大黑框的问题

    sudo apt remove fcitx-module-kimpanel
    sudo reboot

## 安装linux搜狗输入法

    http://pinyin.sogou.com/linux/
    # 直接安装64位deb包，注销即可。

    # 卸载不用的输入法：
    sudo apt remove fcitx-pinyin fcitx-sunpinyin fcitx-table

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

## jdk

### lubuntu安装jdk

先卸载无用的jdk.这样后面就不需要sudo update-alternatives --install ...了 到oracle官网下载jdk-7u75-linux-x64.tar.gz sudo tar zxvf jdk-7u75-linux-x64.tar.gz -C /opt/ 在.bashrc或profile中增加环境变量的设置

    export JAVA_HOME=/opt/jdk1.7.0_75
    export JRE_HOME=${JAVA_HOME}/jre
    export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
    export PATH=${JAVA_HOME}/bin:$PATH

### centos安装jdk

    rpm -qa | grep java
    rpm -qa | grep jdk

    # 把已有的安装包卸载掉

    rpm -e --nodeps java-1.7.0-openjdk-1.7.0.45-2.4.3.3.el6.x86_64

    # 安装新下的oracle的jdk

    rpm -ivh jdk-7u75-linux-x64.rpm

## lubuntu安装eclipse

    wget -c http://mirror.hust.edu.cn/eclipse/technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz
    sudo tar zxvf eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz -C /opt
    cat /usr/share/applications/eclipse.desktop 
        [Desktop Entry]
        Name=Eclipse 4
        Type=Application
        Exec=/opt/eclipse/eclipse
        Terminal=false
        Icon=/opt/eclipse/icon.xpm
        Comment=Integrated Development Environment
        NoDisplay=false
        Categories=Development;IDE;
        Name[en]=Eclipse

## ss

安装

    apt-get install python-pip
    sudo apt install libsodium-dev
    sudo pip install https://github.com/shadowsocks/shadowsocks/archive/master.zip -U

安装浏览器插件

    https://github.com/FelisCatus/SwitchyOmega/releases

设置socks5,127.0.0.1,1080.

    # 启动
    nohup sslocal -s <server> -p <port> -l 1080 -k <password> -m <method> >ss.log 2>1 &

    # 停止
    killall sslocal

## python3安装

http://mirrors.ustc.edu.cn/help/pypi.html

    cat $HOME/.config/pip/pip.conf
    [global]
    index-url = https://mirrors.ustc.edu.cn/pypi/web/simple
    format = columns

    sudo apt install python3-pip python3-setuptools
    pip3 install tornado

## golang安装

https://studygolang.com/dl

    cat $HOME/.profile
    # chuqq
    export GOROOT=/mnt/work/bin/go
    export PATH=$PATH:$GOROOT/bin


## 安装redis、mongodb等

    sudo apt install redis-server mongodb
    # 停止自启动
    sudo update-rc.d redis-server disable
    sudo update-rc.d mongodb disable
    # 临时停止服务
    sudo service redis-server stop // redis和redis-server都可以
    mongodb ???
    # 查询服务
    service redis-server status // redis和redis-server都可以
    mongodb ???


# mac设置

## 调整mac键位

https://github.com/free5lot/hid-apple-patched

* 然后用dkms安装;
* 再修改配置文件（包括左上角～符号）：cp hid_apple.conf /etc/modprobe.d/
* 让配置文件生效：

## 设置笔记本合上盖子外接显示器能用

    vim /etc/systemd/logind.conf

将HandleLidSwitchDocked 改为 ignore，然后删掉前面的 # 号


# 网易云音乐下载

https://music.163.com/#/download

# 搜狗linux输入法

https://pinyin.sogou.com/linux/?r=pinyin