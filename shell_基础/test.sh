:<<!
Shell中的 test 命令用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试
数值测试：
-eq	等于则为真
-ne	不等于则为真
-gt	大于则为真
-ge	大于等于则为真
-lt	小于则为真
-le	小于等于则为真

字符串测试：
=	等于则为真
!=	不相等则为真
-z 字符串	字符串的长度为零则为真
-n 字符串	字符串的长度不为零则为真

文件测试：
-e 文件名	如果文件存在则为真
-r 文件名	如果文件存在且可读则为真
-w 文件名	如果文件存在且可写则为真
-x 文件名	如果文件存在且可执行则为真
-s 文件名	如果文件存在且至少有一个字符则为真
-d 文件名	如果文件存在且为目录则为真
-f 文件名	如果文件存在且为普通文件则为真
-c 文件名	如果文件存在且为字符型特殊文件则为真
-b 文件名	如果文件存在且为块特殊文件则为真



!

num1=100
num2=100

if test $num1 -eq $num2
then
printf "\033[34m%s = %s\033[0m\n" num1 num2
else
printf "%s != %s\n" num1 num2
fi



#test ./test 是否存在，如果存在则显示目录存在，否则显示目录不存在并且询问是否创建目录

dir=test

if test -d "./$dir"
then
printf "%s目录已存在\n" ./$dir
else
read -p "./${dir}目录不存在，是否创建，Y/N\n" option
if test $option = "Y"
then
mkdir $dir
printf "%s创建成功\n" ./$dir
else
exit
fi
fi




