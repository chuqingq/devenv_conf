
# java环境

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

