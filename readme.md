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

卸载不用的软件：
```
apt remove abiword gnumeric sylpheed transmission simple-scan pidgin
```

安装：
```
apt install flashplugin-installer vlc libreoffice terminator
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
```

然后重启。

