#!/usr/bin/expect

# you must pass two parametes,
# 1. template name:  templates in scaffolds directory，you can custom.
# 2. md file name:   the blog file name.

#your hexo blog directory
set timeout 1000

set blogPath "/Users/wenghengcong/MyApps/MeSync/blog"
set passphrase [lindex $argv 0]

#cd hexo blog home directory
cd $blogPath

spawn hexo d -g
expect "root@106.14.174.202's password:*"
send -- "$passphrase\r";
interact
