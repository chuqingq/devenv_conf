# python环境

1. 安装pip3

```
sudo apt install python3-ip
```

1. 配置国内镜像


```
cat ~/.pip/pip.conf
[global]
index-url = https://mirrors.ustc.edu.cn/pypi/web/simple
[install]
trusted-host = mirrors.ustc.edu.cn
```

## python3安装

http://mirrors.ustc.edu.cn/help/pypi.html

    cat $HOME/.config/pip/pip.conf
    [global]
    index-url = https://mirrors.ustc.edu.cn/pypi/web/simple
    format = columns

    sudo apt install python3-pip python3-setuptools
    pip3 install tornado
