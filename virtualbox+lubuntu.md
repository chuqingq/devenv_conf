# virtualbox+ubuntu

## 网络

之前用的桥接，这样虚机有实际的局域网IP。

后续可以用默认的网络（NAT），只需打开端口映射，就可以把虚机中的端口映射到宿主机上。

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
