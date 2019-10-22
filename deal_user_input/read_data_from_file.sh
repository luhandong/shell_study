#!/bin/bash

#read data from a file

#file name 
if test $# -le 0
then
printf "usage : $0   + filename, agr num is $#\n"
fi

read_data()
{
	echo OPTIND = $OPTIND
	echo -e "\033[1;5;31m0  = $0\033[0m"
	filename=$1
	count=1
	if test -e $filename
	then
	if test -r $filename
	then
	cat $filename | while read l  #按行读取文件内容
	do
		printf "${count}:${l} \n"
		count=`expr $count + 1`
	done
	else
	printf "$filename can not read\n"
	fi
	else
	printf "Please confirm $filename  exists\n"
	fi
	
}

read_data $1
