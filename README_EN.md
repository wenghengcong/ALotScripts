# ALotScripts
A lot of scripts for mac.   [【中文】](https://github.com/wenghengcong/ALotScripts)



## Usage

Choose the first or the second way only.

# First Way

Just do below and enjoy it.

```bash
$ cd /repository directory
$ sh usr-local-bin-path.sh
```



**usr-local-bin-path.sh** do what?

1. Create all scripts symbolic link, and copy them  to `/usr/local/bin`.

2. So you can get script everywhere.


# Second Way

Just do below and enjoy it.

```bash
$ cd /repository directory
$ sh custom-path.sh
```





**custom-path.sh** do what?

1. Create symbolic link in repository `/bin` directory.

2. Add `.../bin` to System Path where `/etc/paths` specifies.

After execute shell,you can find `/etc/paths`:

```bash
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
/Users/wenghengcong/Github/ALotScripts/bin
```

