#!/bin/bash

#  Google Cloud Platform  GCP实例开启密码与root用户登陆

#  GCP一键启用root帐号命令
#  wget -qO- git.io/fpQWf | bash

# GCP 启用root密码登陆
sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g"   /etc/ssh/sshd_config
sed -i "s/PasswordAuthentication.*/PasswordAuthentication yes/g"   /etc/ssh/sshd_config

# 重启ssh服务
service sshd restart

关闭SELiunx
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sed -i 's/SELINUXTYPE=targeted/#SELINUXTYPE=targeted/g' /etc/selinux/config


#定义文字颜色
Green="\033[32m"  && Red="\033[31m" && GreenBG="\033[42;37m" && RedBG="\033[41;37m" && Font="\033[0m"

# 修改root 密码: bash脚本不能直接运行passwd，用户手工使用命令
echo -e "${Red}如果需要修改root密码，请输入命令${GreenBG} passwd ${Font}${Green} 修改用户密码! ${Font}"
echo

# 开启完毕后自动启用bbr
wget -N --no-check-certificate "https://github.000060000.xyz/tcp.sh" && chmod +x tcp.sh && ./tcp.sh

#安装bbr
1

#等待安装完成后自动重启
reboot
