https://linux.cn/article-3245-1.html
https://help.ubuntu.com/community/MacBookPro12-1/Wily

# 下载ubuntu，并写入优盘

建议用ubuntu，不要用lubuntu。因为ubuntu对高分辨率屏幕支持更好。

# 在macos下调整分区大小

 打开Disk Utility（磁盘工具）， 点击左边选择你的硬盘， 选择Partitions（分区）标签页。 把Mac分区缩小到你喜欢的大小 - 我们将会用新创建的可用空间来安装Ubuntu。

# 重启安装ubuntu

将U盘插入并重启Mac Book Pro。当关机之后屏幕一黑时，请按住Option键（alt）直到你看到不同的启动选项。选择EFI选项（如果有两个的话选择左边的哪一个）来从USB启动Ubuntu.

# 修改EFI引导

sudo apt-get install efibootmgr
sudo efibootmgr

这个将会显示出当前的启动设置， 你应该看到的是 "ubuntu" 和 "Boot0000"，当前的EFI设置是把系统指向 Boot0080，这样的话就会跳过GRUB然后直接跳入OS X，所以我们要用以下指令来修复它：
sudo efibootmgr -o 0,80

重启。

# 修改grub

首先你需要改一下GRUB的设置，这样你的SSD盘才不会偶尔死机， 在Terminal输入：
sudo nano /etc/default/grub

找到 GRUB_CMDLINE_LINUX那一行 ， 把它改成 GRUB_CMDLINE_LINUX="libata.force=noncq" 。 按下CTRL + X保存，然后按Y来确定保存。 接下来你要在Terminal输入：

sudo nano /etc/grub.d/40_custom
打开一个新的文件，请使用真丶精准手指准确地一字一字输入：

menuentry "Mac OS X" {
exit
}

这将会让你boot到你安装好的Mac OS X（GRUB的32-bit和64-bit项不能用）。然后CTRL+X 和 Y 保存退出，然后输入：

sudo update-grub
最后必须要重启才能生效。

# 调整显示比例

系统设置->显示->菜单栏和标题栏缩放比例，可以调整为1.73或1.88.

# 安装搜狗输入法后调整字体大小

设置->外观->字体大小，调成32就差不多了。

# 调整mac键位

https://github.com/free5lot/hid-apple-patched

* 然后用dkms安装;
* 再修改配置文件（包括左上角～符号）：cp hid_apple.conf /etc/modprobe.d/
* 让配置文件生效：

# 设置笔记本合上盖子外接显示器能用

    vim /etc/systemd/logind.conf

将HandleLidSwitchDocked 改为 ignore，然后删掉前面的 # 号


# 解决~变成其它符号的问题

* 修改macbookpro的键盘映射：https://github.com/free5lot/hid-apple-patched

```
sudo su -
echo 0 > /sys/module/hid_apple/parameters/iso_layout

# 可以简化成这样
echo 0 | sudo tee /sys/module/hid_apple/parameters/iso_layout
```

# 默认开启FN功能键

$ echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode

# source code pro

Step1.下载字体

推荐GitHub上面的项目主页上下载 Source Code Pro

我选择下载最后更新的版本

Step2.解压

使用

$unzip SourceCodePro_FontsOnly-1.013.zip
会生成一个SourceCodePro_FontsOnly-1.013的目录

Step3.copy到.otf文件

复制SourceCodePro_FontsOnly-1.013/OTF目录中的所有.otf文件到~/.fonts目录下，

再执行命令

$fc-cache -f -v
在终端中使用Source Code Pro 字体

修改Terminal（终端）中的字体为Source Code Pro，打开终端-》编辑-》配置文件首选项-》常规-》取消勾选’使用系统的等宽字体’-》选择Source Code Pro-》确定

在SublimeText 2中使用Source Code Pro字体

Preference-》Settings-user，在打开的文件中添加

"font_face": "Source Code Pro"


