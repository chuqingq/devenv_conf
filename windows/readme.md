## 安装系统

- 使用ultraiso来烧制优盘（用win32diskimage不可以）
- 安装完后，搜索windows 安全中心，关闭设置中的三个选项
- 从网盘下载激活工具，用管理员权限安装
- 安装后，用管理员权限运行autopico
- 查看我的电脑、属性，windows已激活。

## 安装ubuntu(WSL)

- 进入microsoft store，安装ubuntu-18.04
- 进入“添加或删除程序”，打开开发者模式
- 启动ubuntu-18.04
- `sudo service ssh start`

## proxy

- 下载shadowsocks-chuqq.zip，并启动
- 在chrome中配置（默认貌似是配置好的）
- 登录chrome进行同步收藏夹、插件和密码
- switchy omega插件需要导入配置，shadowsocks-chuqq中的OmegaOptions-1080.bak
- ubuntu(WSL)可以直接用宿主机的1080端口。

# 安装chocolatey

```
https://chocolatey.org/install
```

# 设置cmd大小

默认值
宽度：120
高度：50

# 查询本地的软件

```
>choco list -l
Chocolatey v0.10.3
```

# 常用软件

```
choco install -y flashplayerplugin
choco install -y googlechrome
choco install -y firefox
choco install -y GoogleChrome
choco install -y chromium
choco install -y winrar # choco install 7zip.install
choco install -y vlc
choco install -y foxitreader # choco search foxitreader查询不到，但是choco search foxit可以查到
choco install -y netease-cloudmusic
choco install -y fscapture
choco install -y everything
choco install -y Clover
```

# 开发工具

```
choco install -y autohotkey.portable
choco install -y rsync
choco install -y mongodb
choco install -y redis-64
choco install -y beyondcompare
choco install -y curl
choco install -y ffmpeg
choco install -y adb
choco install -y android-sdk
choco install -y AndroidStudio
choco install -y notepadplusplus.install
choco install -y SublimeText3
choco install -y jdk8
choco install -y nodejs.install
choco install -y git.install
#choco install -y putty.install # 使用xshell
choco install -y golang
#choco install -y mingw # 使用tdm-gcc
choco install -y zeal.portable
choco install -y python3 # choco install python2
choco install -y netcat # nc111nt.zip
```

