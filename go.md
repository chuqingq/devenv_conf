# golang 

## 通过从镜像下载golang压缩包并安装（优点：下载较快）

```
filename=go1.12.1.linux-amd64.tar.gz
mkdir -p ~/temp/bin
cd ~/temp/bin
wget -c http://mirrors.ustc.edu.cn/golang/${filename}
tar zxvf ${filename}

# 配置环境变量
tee -a ~/.bashrc << EOF

# go
export PATH=\$PATH:~/temp/bin/go/bin
export GOPATH=~/temp/gopath
export PATH=\$PATH:\$GOPATH/bin
export GO111MODULE=on

EOF
cd ~
source ~/.bashrc
# 默认的gopath是~/go
# 测试 go get github.com/valyala/fasthttp
```

## 通过snap安装golang指定版本（缺点：下载较慢）

```
$ snap info node
name:      node
summary:   Node.js
publisher: NodeSource, Inc. (nodesource✓)
contact:   https://github.com/nodesource/distributions
license:   MIT
description: |
  A JavaScript runtime built on Chrome's V8 JavaScript engine. Node.js uses an event-driven,
  non-blocking I/O model that makes it lightweight and efficient. Node.js' package ecosystem, npm,
  is the largest ecosystem of open source libraries in the world. https://nodejs.org/
snap-id: MEd4V4HHFkCXBSz6UzVmKF2D2PmWcVwR
channels:
  stable:       –
  candidate:    –
  beta:         –
  edge:         12.0.0-nightly2018122900944c7c (1463) 18MB classic
  11/stable:    11.5.0                         (1416) 18MB classic
  11/candidate: ↑
  11/beta:      ↑
  11/edge:      ↑
  10/stable:    10.14.2                        (1426) 18MB classic
  10/candidate: ↑
  10/beta:      ↑
  10/edge:      ↑
  9/stable:     9.11.2                         (1407) 17MB classic
  9/candidate:  ↑
  9/beta:       ↑
  9/edge:       ↑
  8/stable:     8.15.0                         (1452) 16MB classic
  8/candidate:  ↑
  8/beta:       ↑
  8/edge:       ↑
  6/stable:     6.15.1                         (1379) 13MB classic
  6/candidate:  ↑
  6/beta:       ↑
  6/edge:       ↑
  
$ sudo snap install node --channel=10/stable --classic
```

```
$ sudo snap install go
```

## 配置环境变量

我的macbook需要：
```bash
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=/Volumes/work/go
export PATH=$PATH:$GOPATH/bin
```

## go mod 模式

```bash
export GO111MODULE=on
export GOPROXY=https://mirrors.cloud.tencent.com/go/
#export GOPROXY=https://goproxy.io
# export GOPROXY=https://athens.azurefd.net
```
