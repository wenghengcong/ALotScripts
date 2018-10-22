#cd hexo blog home directory
cd ~/Desktop/MeSync/blog/
echo $PWD
#hexo new template file name
echo $1
echo $2
hexo new $1 "$2"

#如果字符串中有空格，hexo默认会将空格置为-，所以要进行替换
oriFileName="$2.md"
#echo "orinigal $oriFileName"
find=" "
replace="-"
result=${oriFileName//$find/$replace}
#echo "result $result"

#移动文件
sourceFile="/Users/wenghengcong/Desktop/MeSync/blog/source/_posts/$result"
desPath="/Users/wenghengcong/Desktop/MeSync/Next_Blog"
#echo "source file: $sourceFile"
echo "file now here: $desPath"
mv -i $sourceFile $desPath

