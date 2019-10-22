#!/bin/bash

#shell 中不能直接进行变量的计算，必须借助于其他的运算机制，例如expr  bc  还有这里的方括号


v1=10
v2=100
v3=$[$v1+$v2]
v4=$[$v2 / $v1]
echo v3=$v3 v4=$v4
