#!/bin/bash
#Author: zhaiyanquan

game=(石头 剪刀 布)

num=$[RANDOM%3] #通过随机数获取计算机的出拳 

#出拳的可能性保存在一个数组中,game[0],game[1],game[2]分别是 3 中不同的可能 
computer=${game[$num]} #通过随机数获取计算机的出拳 

echo "请根据下列提示选择您的出拳手势" 
echo "1.石头" 
echo "2.剪刀" 
echo "3.布"

read -p "请选择 1‐3:" person

case $person in
1) 

  echo "你出${game[$person-1]}  计算机出$computer";
  if [ "$computer" == "石头" ];then 
       echo "平局" 
  elif [ "$computer" == "剪刀" ];then 
       echo "你赢了" 
  else 
       echo "计算机赢了" 
  fi;; 

2)   

  echo "你出${game[$person-1]}  计算机出$computer";
  if [ "$computer" == "石头" ];then 
       echo "计算机赢了" 
  elif [ $num -eq 1 ];then 
       echo "平局" 
  else 
       echo "你赢了" 
  fi;; 

3)
 
  echo "你出${game[$person-1]}  计算机出$computer";
  if [ "$computer" == "石头" ];then 
       echo "你赢了" 
  elif [ "$computer" == "剪刀" ];then   
       echo "计算机赢了" 
  else 
       echo "平局" 
  fi;; 

*) 

  echo "必须输入 1‐3 的数字" 

esac 


