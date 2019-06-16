#!/bin/bash
#大小比较并排序
#从小到大排序
#Author: zhaiyanquan

read -p "请输入第一个整数：" num1
read -p "请输入第二个整数：" num2
read -p "请输入第三个整数：" num3

#如果输入的不是这样的顺序,则改变数的存储顺序,如:可以将 num1 和 num2 的值对调 
tmp=0
if [ $num1 -gt $num2 ];then
    tmp=$num1
    num1=$num2
    num2=$tmp
fi

#如果 num1 大于 num3,就把 num1 和 num3 对调,确保 num1 变量中存的是最小值
if [ $num1 -gt $num3 ];then
    tmp=$num1
    num1=$num3
    num3=$tmp
fi

#如果 num2 大于 num3,就把 num2 和 num3 对标,确保 num2 变量中存的是小一点的值 
if [ $num2 -gt $num3 ];then
    tmp=$num2
    num2=$num3
    num3=$tmp
fi

echo "排序后数据为:$num1,$num2,$num3" 




