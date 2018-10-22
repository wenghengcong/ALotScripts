# ALotScripts
针对mac系统的脚本集合。[【English】](https://github.com/wenghengcong/ALotScripts/blob/master/README_EN.md)



## 如何使用

**方案一、二选其中一个，执行完脚本，就可以调用。**

# 方案一

执行以下操作，就可以使用脚本了。

```bash
$ cd /repository directory
$ sh usr-local-bin-path.sh
```



**usr-local-bin-path.sh** 做了什么？

1. 将会创建所有的脚本的符号链接，并将它们复制到`/usr/local/bin`路径下。

2. 在任何地方访问这些脚本





# 方案二

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

