#!/bin/bash

#sed 基础编程 默认只修改第一个匹配到的列
echo "sed 替换默认"

echo "exec cmd   sed \"s/t/a/\" ./test.txt"


sed "s/t/a/" ./test.txt


#sed  限定修改匹配到的第n列

echo  -e "\n\nsed  n  列"

echo "sed \"s/t/a/2 \"  ./test.txt"

sed "s/t/a/2" ./test.txt


#sed 使用w 将匹配的行打印到某个文件

echo -e "\n\n sed  w "

echo "sed  \"s/t/a/w test_.txt \" ./test.txt"

sed  "s/t/a/w test_.txt" ./test.txt


#sed  使用寻址  只替换第3行

echo -e "\n\n sed \"3s/t/a/ \" ./test.txt"

sed "3s/t/a/" ./test.txt


sed "s/\n/\^/" ./test.txt


