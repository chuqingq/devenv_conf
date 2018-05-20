# 重装系统

（shift+）cmd+r

先用DiskUtility工具把磁盘抹掉，然后reinstall os。

# 设置机器名

系统偏好设置->共享，机器名设置为chuqq-mac。

# 安装搜狗输入法

从官方网站下载dmg安装。系统偏好设置->语言和地区，需要选择中国。

系统偏好设置->键盘，输入法中只保留ABC和搜狗拼音。

# ntfs
    sudo ntfsx
 如果是之前已经挂载过的，就会自动被挂载为可写。

# office
# gdb

# 设置键盘

* 按键重复：快
* 重复前延迟：短

# virtualbox+ubuntu

* 菜单：Device->Insert Guest Additions CD image
* 在虚机中打开光盘，执行./VBox\*.run
* 创建work和temp目录，并创建mount.sh脚本，每次新登录时执行即可。
    sudo mount -t vboxsf work /home/chuqq/work
    sudo mount -t vboxsf temp /home/chuqq/temp

# .profile

    $ cat ~/.profile
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

    # export GOROOT=/usr/local/Cellar/go/1.9.2/libexec
    export GOPATH=$HOME/gopath

    export JAVA_HOME=`/usr/libexec/java_home`
    export ANDROID_HOME=/Users/chuqq/Library/Android/sdk

    alias cnpm="npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"

    export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$ANDROID_HOME/platform-tools

# brew cask

    $ brew cask list -1
    # alfred # use spotlight instead
    android-studio
    # dash # use devdocs.io instead
    eclipse-java
    firefox
    genymotion
    google-chrome
    iterm2
    java
    neteasemusic
    qq
    qqmusic
    mos # 代替scroll-reverser或smooth scroll的
    spectacle
    sublime-text
    teamviewer
    textmate
    the-unarchiver
    virtualbox
    vlc
    microsoft-office # refer to 激活工具.dmg @pan.baidu.com

# brew

    $ brew list -1
    ant
    ctags
    dos2unix
    ffmpeg
    fish
    gdbm
    geoip
    gettext
    git
    go
    gradle
    htop
    icu4c
    lame
    lrzsz
    mongodb
    nmap
    node
    openresty
    openresty-openssl
    openssl
    openssl@1.1
    pcre
    pcre2
    phantomjs
    pkg-config
    portaudio
    postgresql
    python3
    readline
    sbt
    scons
    sqlite
    tomcat
    unrar
    watch
    wget
    wrk
    x264
    xvid
    xz

# 外接显示器注意事项

* 不支持无源的hdmi转vga
* 用tb转vga时，可以这个顺序：笔记本合上盖子、接电源、接tb线、接键盘鼠标，然后点击键盘唤醒电脑
