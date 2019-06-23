# ALotScripts

针对mac系统的脚本集合。[【English】](https://github.com/wenghengcong/ALotScripts/blob/master/README_EN.md)



## 如何使用

## Shell脚本

**方案一、二选其中一个，执行完脚本，就可以调用。**

### 方案一

执行以下操作，就可以使用脚本了。

```bash
$ cd /repository directory
$ sh usr-local-bin-path.sh
```



**usr-local-bin-path.sh** 做了什么？

1. 将会创建所有的脚本的符号链接，并将它们复制到`/usr/local/bin`路径下。

2. 在任何地方访问这些脚本





### 方案二

执行以下操作，就可以使用脚本了

```bash
$ cd /repository directory
$ sh custom-path.sh
```



**custom-path.sh**做了什么？

1. 在仓库 目录`/bin` 创建了所有脚本的符号链接。
2. 将`/bin`目录加入到系统环境变量`/etc/path`下。`/etc/path`最后如下：

```bash
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
/Users/wenghengcong/Github/ALotScripts/bin
```



## Apple Script

```bash
$ osascript **.scpt
```

或者将applescript路径假如到Alfred中，可直接搜索，运行。



# 工具

## expert

expert是一个实现人机交互的命令工具，可以抓取和相应用户输入，也可以模拟用户输出。

比如可以完成脚本里自动输入密码等交互性动作。

### 安装

>    brew install expect

### 使用

#### 纯expert脚本

```bash
#!/usr/bin/expect

```

#### 混合脚本

```bash
#!/bin/bash

#your hexo blog directory

/usr/bin/expect <<EOD

set blogPath "/User/***/blog"
set passphrase "123"

#cd hexo blog home directory
cd $blogPath

send "开始\r"

spawn hexo d -g
expect "root@1**.1*.1**.2**'s password:"
send "$passphrase\r";

interact
EOD

echo "完成\r"
```



### 参考

1.  [官网](https://core.tcl-lang.org/expect/home)
2.  [官网实例](https://wiki.tcl-lang.org/page/Expect+Examples)
3.  [中文版教程](http://xstarcd.github.io/wiki/shell/expect_handbook.html)
4.  [Expect 简介和使用实例](https://www.jianshu.com/p/70556b1ce932)

