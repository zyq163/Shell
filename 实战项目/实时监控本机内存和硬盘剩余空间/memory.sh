#!/bin/bash

#提取根分区剩余容量
disk_size=$(df | awk '/\/$/{print $4}') #或 disk_size=$(df / | tail -1 | awk '{print $4}')

#提取内存剩余空间 
mem_size=$(free |awk '/Mem/{print $4}')

while :
do       #或[ $disk_size  ‐le  512000 ] && [ $mem_size  ‐le  1024000 ]
     if  [ $disk_size  ‐le  512000  ‐a  $mem_size  ‐le  1024000 ];then    
         mail  ‐s  Warning  root  <<EOF 
         Insufficient resources,资源不足
          df | awk '/\/$/{print $4} 
         EOF 
    fi 
done
