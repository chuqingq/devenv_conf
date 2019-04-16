
# java环境

## jdk

### ubuntu安装jdk

```
# 先卸载无用的jdk.这样后面就不需要sudo update-alternatives --install ...了
sudo apt remove openjdk*

# 下载地址（jdk8）： https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
# 浏览器打开后勾选accept license，然后点击对应的版本进行下载，复制下载地址。

cd ~/temp/bin
wget -c "https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-x64.tar.gz?AuthParam=1554787885_fc1f04450ab668d4481999d39808a07a" -O jdk-8u201-linux-x64.tar.gz
tar zxvf jdk-*-linux-x64.tar.gz

# 配置环境变量
tee -a ~/.bashrc << EOF

# jdk
export JAVA_HOME=~/temp/bin/jdk1.8.0_201
export JRE_HOME=\${JAVA_HOME}/jre
export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib
export PATH=\${JAVA_HOME}/bin:\$PATH

EOF
```

### centos安装jdk

```
rpm -qa | grep java
rpm -qa | grep jdk

# 把已有的安装包卸载掉
rpm -e --nodeps java-1.7.0-openjdk-1.7.0.45-2.4.3.3.el6.x86_64

# 安装新下的oracle的jdk
rpm -ivh jdk-7u75-linux-x64.rpm
```

### lubuntu安装eclipse

```
wget -c http://mirror.hust.edu.cn/eclipse/technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz
sudo tar zxvf eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz -C /opt
sudo tee /usr/share/applications/eclipse.desktop << EOF
[Desktop Entry]
Name=Eclipse 4
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse
EOF
```

## vscode安装java相关插：？？

## 安装maven

macos：
```
brew install maven
```

ubuntu:
```
sudo apt install maven
## 配置文件？？
```

## 修改maven源

```
/usr/local/Cellar/maven/3.5.4/libexec/conf
vim settings.xml
```

配置文件内容：
```
<mirror>
    <id>alimaven</id>
    <mirrorOf>central</mirrorOf>
    <name>aliyun maven</name>
    <url>https://maven.aliyun.com/repository/public</url>
</mirror>
```

## 创建项目

```
mvn archetype:generate -DgroupId=chuqq.groupid -DartifactId=chuqq.artifactid -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```

## 使用

vscode打开，然后就可以用F5进行调试，Ctrl+F5运行

