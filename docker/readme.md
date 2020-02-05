## ubuntu docker

ubuntu:
```
sudo tee -a /etc/default/docker << EOF
DOCKER_OPTS="--registry-mirror=http://mirrors.ustc.edu.cn/docker-ce"

EOF
```

manjaro/arch:
```
sudo tee /etc/docker/daemon.json < EOF
{
"registry-mirrors": ["https://qcagxvko.mirror.aliyuncs.com"]
}
EOF
```

## 手工操作

```
# 拉镜像
sudo docker pull ubuntu:14.04
# 运行镜像
sudo docker  run --name chuqq_ubuntu1404 -it ubuntu:14.04 /bin/bash
# 启动容器
sudo docker start 812d2a97bf05
# 运行容器中的命令
sudo docker exec -it chuqq_ubuntu1404 /bin/bash

# 在容器内

# 修改apt源
sudo sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
# 更新apt
sudo apt update
# 安装gcc、g++
sudo apt install gcc g++
```

## 自动操作

参考dockerfile。未验证。
```
sudo docker build . -t ubuntu1404
```

