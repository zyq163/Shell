#!/bin/bash
#功能：使用 tar 命令备份/var/log 下的所有日志文件
#编写备份脚本,备份后的文件名包含日期标签,防止后面的备份将前面的备份数据覆盖 

tar -czf log-`date +%Y%m%d`.tar.gz /var/log

#或tar -czf log-$(date +%Y%m%d).tar.gz /var/log


