
# java环境

## jdk

### ubuntu安装jdk

先卸载无用的jdk.这样后面就不需要sudo update-alternatives --install ...了 到oracle官网下载jdk-7u75-linux-x64.tar.gz sudo tar zxvf jdk-7u75-linux-x64.tar.gz -C /opt/ 在.bashrc或profile中增加环境变量的设置

    export JAVA_HOME=/opt/jdk1.7.0_75
    export JRE_HOME=${JAVA_HOME}/jre
    export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
    export PATH=${JAVA_HOME}/bin:$PATH

### centos安装jdk

    rpm -qa | grep java
    rpm -qa | grep jdk

    # 把已有的安装包卸载掉

    rpm -e --nodeps java-1.7.0-openjdk-1.7.0.45-2.4.3.3.el6.x86_64

    # 安装新下的oracle的jdk

    rpm -ivh jdk-7u75-linux-x64.rpm

### lubuntu安装eclipse

    wget -c http://mirror.hust.edu.cn/eclipse/technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz
    sudo tar zxvf eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz -C /opt
    cat /usr/share/applications/eclipse.desktop 
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

