#!/bin/bash

dir=`echo $PATH | sed "s/:/ /g"`

count=0

for dir0 in $dir
do
	dir0_ls=`ls $dir0`
	for file in $dir0_ls
	do 
	count=$[$count + 1]
	done
	echo "$dir0 : $count"
	count=0
done
