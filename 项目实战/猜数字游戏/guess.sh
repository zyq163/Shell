#!/bin/bash
#Author: zhaiyanquan
#RANDOM 为系统自带的系统变量,值为 0‐32767 的随机数 
#使用取余算法将随机数变为 1‐100 的随机数
num=$[RANDOM%100+1]

n=1 #统计猜数次

while : 
do
      read -p  "计算机生成了一个 1‐100 的随机数,你猜: " cai
      if [ $cai -eq $num ];then
            echo -e "\033[32m中奖码：$num  一共猜了$n次\033[0m"
            echo -e "\033[32m恭喜,猜对了\033[0m" 
            exit 1
      elif [ $cai -gt $num ];then
            echo -e "\033[33mOops,猜大了\033[0m" 
      else
            echo -e "\033[33mOops,猜小了\033[0m" 
      fi
      let n++
done

