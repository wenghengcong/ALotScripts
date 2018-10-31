#!/bin/bash

echo "create symbolic link to /usr/local/bin"
cd "$(dirname "$0")"
#type -f - only search for files (not directories)
#\( - needed for the type -f to apply to all arguments
#-o - logical OR operator
#-iname - like -name, but the match is case insensitive
#for dir in `find . -type f \( -iname \*.sh -o -iname \*.scpt \)  -mindepth 2`
for dir in `find . -type f \( -iname \*.sh \)  -mindepth 2`
do
    #删除符号链接
    #注意变量名，不要在=左右加空格
    #basename取文件名函数
    filename=$(basename $dir)
    binpath="/usr/local/bin/$filename"
#    echo $dir
#    echo $binpath
    binfile=$PWD${dir:1}
    echo $binfile
    chmod +x $binfile
    rm -f "$binpath"

    #create symbolic link
    ln -s "$binfile" /usr/local/bin
done
echo "Done"
