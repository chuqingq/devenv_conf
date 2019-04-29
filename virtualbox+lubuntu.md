# virtualbox+ubuntu

## 网络

之前用的桥接，这样虚机有实际的局域网IP。

后续可以用默认的网络连接方式“网络地址转换（NAT）”，只需打开“高级->端口转发”，设置“主机端口2222，子系统端口22”，就可以把虚机中的22端口映射到宿主机的2222上。

## 文件夹共享

* 菜单：Device->Insert Guest Additions CD image
* 在虚机中打开光盘，执行./VBox\*.run
* 如果是ubuntu-18.04，则界面会自动适应宿主机屏幕分辨率（例如高分屏），ubuntu-16.04不会；
* virtualbox中设置共享文件夹：
    * 共享文件夹路径：D:\temp
    * 共享文件夹名称：temp
    * 只读分配：否
    * 挂载点：/home/chuqq/temp
    * 固定分配：是
    * 把用户加入到vboxsf群组：sudo adduser chuqq vboxsf
    * 这样普通用户不用sudo su就可以读写共享文件夹了

## sudo xxx 报错 command not found

普通用户执行命令正常，sudo时失败。解决方案：
```
sudo visudo
```
把Defaults开头的三行注释掉即可。
