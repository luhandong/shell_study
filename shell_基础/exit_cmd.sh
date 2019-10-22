#!/bin/bash

#推出的状态码（退出的返回值）最大为255，超过则进行模运算
#test script

var1=10
var2=20
var3=`expr $var1 + $var2`
echo $var3
exit 5

