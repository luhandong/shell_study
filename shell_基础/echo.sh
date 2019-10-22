:<<EOF
echo命令颜色显示：

echo：
      -n:  不换行.每个echo都会自动换行的，使用-n的话就不会自动换行了
      -e：让转移符生效. \t(tab) \n (换行)

实例：

$ echo -e "\033[34mabcd\033[0m"
abcd
其中：\033:控制符相当于crtl键、[3  :表示颜色、4:表示颜色、从1-7开始、\033[0m:表示结尾符. 写法如这种 \033[3 1-7

$ echo -e "\033[1;5;31mWarning\033[0m" change the password.
Warning change the password.
Warning 这个字段会一闪一闪的样式.
EOF
echo "使用 -n"
echo -n "1234"

echo "不使用 -n"
echo "1234"

echo "使用 -e使用转义字符"

echo -e "1\n2"

echo -e "\033[1;5;32mtest\033[0m"

echo "不使用 -e"

echo "1\n2"
