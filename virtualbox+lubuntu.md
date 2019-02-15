# virtualbox+ubuntu

* 菜单：Device->Insert Guest Additions CD image
* 在虚机中打开光盘，执行./VBox\*.run
* 如果是ubuntu-18.04，则界面会自动适应宿主机屏幕分辨率（例如高分屏），ubuntu-16.04不会；
* virtualbox中设置共享文件夹：
    * 共享文件夹路径：D:\work
    * 共享文件夹名称：work
    * 只读分配：否
    * 挂载点：/home/chuqq/work
    * 固定分配：是
    * 把用户加入到vboxsf群组：sudo adduser chuqq vboxsf
    * 这样普通用户不用sudo su就可以读写共享文件夹了
    * 下面的脚本暂时不需要

    命令：

    sudo mount -t vboxsf work /home/chuqq/work
    sudo mount -t vboxsf temp /home/chuqq/temp
