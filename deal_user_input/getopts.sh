:<<!
getopts  功能是：获得用户输入命令的参数

格式：
getopts  option_string variable

值得注意的是：
variable 是用户对应的单选项

option_string  是单选项的实际命令枚举
特别注意冒号: 的使用
冒号在选项之前表示，区分缺少选项参数和无效选项错误
冒号在选项之后表示，该选项必须带参数

特别注意：
OPTARG 这个变量是存储选项对应的参数，特别注意只有选项后面带冒号这个变量才会等于参数，否则就算带上参数这个变量也不会有结果

名词解释：
缺少选项参数：对应选项应该加参数而实际上呢却没有参数
无效选项： 枚举中没有列举这个选项

!

#写一个实际例子
#功能将cat 和 vim 集合，-c  表示 cat文件  -v  表示 vim 一个文件

#参数个数至少1个

if test $# -lt 1
then
echo "$0 -h  get help "
fi

cat_file()
{
	filename=$1
	shift 0
	echo $OPTIND
	echo -e "\033[1;5;31m0  = $1\033[0m"
		./read_data_from_file.sh $filename
}

vim_file()
{
	filename=$1
	echo OPTIND = $OPTIND
	vim  $filename
}

help()
{
	echo "Usage -h  get help for this script"
	echo "Usage -c  filename    cat filename and display line num"
	echo "Usage -v  filename    vim filename"
}


while getopts ":c:v:h" opt
do
case $opt in
c) cat_file $OPTARG;;
v)vim_file $OPTARG;;
h)help;;
\?) echo "unknown option : -$opt";;
esac

done



