# 重装系统

（shift+）cmd+r

先用DiskUtility工具把磁盘抹掉，然后reinstall os。

# 设置机器名

系统偏好设置->共享，机器名设置为chuqq-mac。

# 安装搜狗输入法

从官方网站下载dmg安装。系统偏好设置->语言和地区，需要选择中国。

系统偏好设置->键盘，输入法中只保留ABC和搜狗拼音。

# 设置键盘

* 按键重复：快
* 重复前延迟：短

# 安装xcode相关工具

    xcode-select --install

# ntfs

## 方案1（推荐）：ntfsx(on electron)

https://github.com/Sailiy/ntfsx

百度网盘。

## 方案2：ntfsx

https://github.com/naingyeminn/ntfsx

    sudo ntfsx
 如果是之前已经挂载过的，就会自动被挂载为可写。

# 修改hosts

# office

## 方案1（推荐）：WPS

## 方案2：微软office
    brew cask install microsoft-office

然后用百度网盘激活工具激活。

# 定时提醒：red hot timer

appstore

# gdb

* 先安装8.0.1（8.1版本有bug）。

（brew switch formula version 好像只用来卸载，无法用来安装）

https://www.jianshu.com/p/aadb54eac0a8

```
git clone https://github.com/Homebrew/homebrew-core/
git log ./Formula/gdb.rb | less
git checkout c3128a5c335bd2fa75ffba9d721e9910134e4644
```
* 然后按照`https://sourceware.org/gdb/wiki/BuildingOnDarwin`的2.1节codesign。

```
gdb requires special privileges to access Mach ports.
You will need to codesign the binary. For instructions, see:

  https://sourceware.org/gdb/wiki/BuildingOnDarwin

On 10.12 (Sierra) or later with SIP, you need to run this:

  echo "set startup-with-shell off" >> ~/.gdbinit
```

调试时使用：

    g++ -g test.cpp
    sudo gdb ./a.out


# virtualbox+ubuntu

* 菜单：Device->Insert Guest Additions CD image
* 在虚机中打开光盘，执行./VBox\*.run
* 创建work和temp目录，并创建mount.sh脚本，每次新登录时执行即可。

命令：

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
    android-file-transfer
    # dash # use devdocs.io instead
    dd-utility # instead of `dd`
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
    cmake
    ctags
    dos2unix
    ffmpeg
    fish
    gdbm
    git
    go
    gradle
    htop
    lame
    lrzsz
    maven
    mongodb
    nmap
    node
    openresty
    pcre
    pcre2
    phantomjs
    portaudio
    postgresql
    python3
    readline
    sbt
    scons
    sox
    sqlite
    tomcat
    vim
    unrar
    watch
    wget
    wrk
    x264
    xvid
    xz

# 应用商店（app store）

* red hot timer

# 外接显示器注意事项

* 不支持无源的hdmi转vga
* 用tb转vga时，可以这个顺序：笔记本合上盖子、接电源、接tb线、接键盘鼠标，然后点击键盘唤醒电脑
