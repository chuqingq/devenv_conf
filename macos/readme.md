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
    alfred
    android-studio
    dash
    eclipse-java
    firefox
    genymotion
    google-chrome
    iterm2
    java
    neteasemusic
    qq
    qqmusic
    scroll-reverser
    spectacle
    sublime-text
    teamviewer
    textmate
    the-unarchiver
    virtualbox
    vlc

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
