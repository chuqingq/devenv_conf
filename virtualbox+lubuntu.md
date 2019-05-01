# virtualbox+ubuntu

## 网络

之前用的桥接，这样虚机有实际的局域网 IP。

后续可以用默认的网络连接方式“网络地址转换（NAT）”，只需打开“高级->端口转发”，设置“主机端口 2222，子系统端口 22”，就可以把虚机中的 22 端口映射到宿主机的 2222 上。

## 文件夹共享

- 菜单：Device->Insert Guest Additions CD image
- 在虚机中打开光盘，执行./VBox\*.run
- 如果是 ubuntu-18.04，则界面会自动适应宿主机屏幕分辨率（例如高分屏），ubuntu-16.04 不会；
- virtualbox 中设置共享文件夹：
  - 共享文件夹路径：D:\temp
  - 共享文件夹名称：temp
  - 只读分配：否
  - 挂载点：/home/chuqq/temp
  - 固定分配：是
  - 把用户加入到 vboxsf 群组：sudo adduser chuqq vboxsf
  - 这样普通用户不用 sudo su 就可以读写共享文件夹了

## sudo xxx 报错 command not found

普通用户执行命令正常，sudo 时失败。解决方案：

```
sudo visudo
```

把 Defaults 开头的三行注释掉即可。

## 允许在共享文件夹创建软链接

```
VBoxManage setextradata ubuntu1804 VBoxInternal2/SharedFoldersEnableSymlinksCreate/temp 1
VBoxManage getextradata ubuntu1804 enumerate
```

在virtualbox主界面中的虚拟机上右键，“创建桌面快捷方式”。
后续启动虚拟机时，以管理员身份运行桌面上的虚拟机快捷方式即可。
