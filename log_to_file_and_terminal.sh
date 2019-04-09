#!/bin/bash
#code:utf-8
# 实现将命令输出结果存到文件并打印到终端的功能
# ----------------------------------------------------------------------------------


function log_to_file_and_terminal() {
    fifofile="/tmp/installed.fifo"
    if [ -p "${fifofile}" ];then
      echo "File ${fifofile} has already existed!"
    else
      echo "Touch fileFile ${fifofile}"
      mkfifo $fifofile
    fi
    # ${installed_log}定义在setup.conf中
    cat $fifofile | tee ${installed_log} &
    exec 1>$fifofile
    exec 2>&1
}

usage:
1，定义配置文件setup.conf，定义installed_log变量
installed_log=/var/log/psm_install.log

2，主脚本中导入配置文件及log_to_file_and_terminal.sh脚本。这里的setup.conf，log_to_file_and_terminal.sh及主shell脚本位于同一目录
source ./setup.conf
source ./log_to_file_and_terminal.sh

3，调用log_to_file_and_terminal函数
log_to_file_and_terminal
