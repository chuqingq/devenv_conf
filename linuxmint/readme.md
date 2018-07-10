# linuxmint

## 软件源

修改为ustc和aliyun，然后更新缓存

## 更新系统

右下角软件更新

## install mint-codecs

welcome -> install mint-codecs

## 配置语言和输入法

    系统设置->语言设置：chinese，china，应用到整个系统
    输入法：简体中文->安装，然后sudo apt remove fonts-arphic-ukai fonts-arphic-uming
    下载搜狗输入法并安装
    Fcitx配置：保留Keyboard-Chinese和搜狗拼音两种输入法即可。
    
sougou input fonts: 32

如果字体小（例如在2K屏上），可以整体放大：设置->字体->字体设置->文本缩放比例，改成1.1或1.2即可。

## 安装所需软件

sudo apt install vim g++ gdb make git fish

## 软件管理器（mintinstall）安装

sublimetext、meld、vscode, cheese, 等

## 安装私有软件

下载安装网易云音乐、wps（黑色主题不如libreoffice）

# python3安装

http://mirrors.ustc.edu.cn/help/pypi.html

    cat $HOME/.config/pip/pip.conf
    [global]
    index-url = https://mirrors.ustc.edu.cn/pypi/web/simple
    format = columns

    sudo apt install python3-pip python3-setuptools
    pip3 install tornado

# golang安装

https://studygolang.com/dl

    cat $HOME/.profile
    # chuqq
    export GOROOT=/mnt/work/bin/go
    export PATH=$PATH:$GOROOT/bin

# 调整mac键位

https://github.com/free5lot/hid-apple-patched

* 然后用dkms安装;
* 再修改配置文件（包括左上角～符号）：cp hid_apple.conf /etc/modprobe.d/
* 让配置文件生效：

# 网易云音乐下载

https://music.163.com/#/download

# 搜狗linux输入法

https://pinyin.sogou.com/linux/?r=pinyin


## 安装jdk

### lubuntu安装jdk

先卸载无用的jdk.这样后面就不需要sudo update-alternatives --install ...了 到oracle官网下载jdk-7u75-linux-x64.tar.gz sudo tar zxvf jdk-7u75-linux-x64.tar.gz -C /opt/ 在.bashrc或profile中增加环境变量的设置

    export JAVA_HOME=/opt/jdk1.7.0_75
    export JRE_HOME=${JAVA_HOME}/jre
    export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib

## 设置笔记本合上盖子外接显示器能用

```
vim /etc/systemd/logind.conf
```

将HandleLidSwitchDocked 改为 ignore，然后删掉前面的 # 号

