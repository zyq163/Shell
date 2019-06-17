#!/bin/bash
#创建用户，并同时设置密码

read -p "请输入用户名: " user

if [ -z $user ];then
    echo -e "\033[33m您需要输入账户名\033[0m"
    exit 1
fi

#使用 stty ‐echo 关闭 shell 的回显功能 
#使用 stty  echo 打开 shell 的回显功能 
stty -echo
read -p "请输入密码: " pass
stty echo

pass=${pass:-123456}
useradd $user
echo $pass | passwd --stdin $user
