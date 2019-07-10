

# you must pass two parametes,
# 1. template name:  templates in scaffolds directory，you can custom.
# 2. md file name:   the blog file name.

#your hexo blog directory
blogPath=/Users/wenghengcong/MyApps/MeSync/blog

#the path you save pengding blogs
pendingBlogPath=/Users/wenghengcong/MyApps/MeSync/Next_Blog

#cd hexo blog home directory
cd $blogPath

#echo $PWD
#hexo new template(I'm just use category as template) filename, templates in scaffolds
echo "category: $1"
echo "filename: $2"

#call hexo command to create template md file,templates in scaffolds
#hexo command will create a md file in blogPath
hexo new $1 "$2"

#if string contains emptyspace ， it will just replace '-'
oriFileName="$2.md"
#echo "orinigal $oriFileName"
find=" "
replace="-"
resultFileName=${oriFileName//$find/$replace}
#echo "result $result"
sourceFile="$blogPath/source/_posts/$resultFileName"

#move the file form blogPath to pendingBlogPath
echo "file now here: $pendingBlogPath"
mv -i $sourceFile $pendingBlogPath

#open the file by Typora,you can replace you used app.
desPathFile="$pendingBlogPath/$resultFileName"
open -a "Typora" $desPathFile

