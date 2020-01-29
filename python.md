# python安装

以python3为例：

```
sudo apt install python3-pip python3-setuptools
pip3 install tornado
```

# 配置国内镜像源

python配置：

```
mkdir -p ~/.pip
cat > ~/.pip/pip.conf << EOF
[global]
index-url = https://mirrors.ustc.edu.cn/pypi/web/simple
[install]
trusted-host = mirrors.ustc.edu.cn
EOF
```

python3配置：

http://mirrors.ustc.edu.cn/help/pypi.html

```
mkdir -p ~/.config/pip
cat > ~/.config/pip/pip.conf << EOF
[global]
index-url = https://mirrors.ustc.edu.cn/pypi/web/simple
format = columns
EOF
```

# 安装库

```
pip install --user scipy numpy matplotlib tornadoweb
```
