#!/bin/bash

echo "create link to ./bin/"
cd "$(dirname "$0")"

rm -R -f ./bin/*

for dir in `find . -type f \( -iname \*.sh -o -iname \*.scpt \)  -mindepth 2`
do
    ln -s "$dir" ./bin
done

#$'\n' 换行符
current="$PWD"
etcPathFile="/etc/paths"
if grep -q $current $etcPathFile
then
    echo "path is exists"
else
    echo "add ./bin path to /etc/paths"
    sudo -S echo $'\n'"$PWD" >> /etc/paths
fi
echo "Done"
