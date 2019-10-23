#!/bin/bash

branch=`git branch`

b=`echo $branch|awk '{print $NF}'`  #提取最后一列数据就是分支名称

git push origin $b

