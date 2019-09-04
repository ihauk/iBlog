
title: centos安装teamviewer概述
date: 2019-8-17 19:06:42

categories: Linux
 
tags: [centos,teamviewer]

feature: img/键盘俏天下.jpg
toc: true
---

### 历史版本安装连接

https://community.teamviewer.com/t5/TeamViewer-Knowledge-Base-ZH/%E6%88%91%E5%8F%AF%E4%BB%A5%E5%9C%A8%E5%93%AA%E9%87%8C%E4%B8%8B%E8%BD%BD-TeamViewer-%E6%97%A7%E7%89%88%E6%9C%AC/ta-p/33695


### 安装rpm文件

```
1、rpm -ivh teamviewer-host_13.2.75536.x86_64.rpm      //需要自己安装依赖
2、yum install teamviewer-host_13.2.75536.x86_64.rpm   //建议用此命令，会自动安装依赖
```

### 控制teamviewer服务
```
systemctl [start|status|stop|disable|enable] teamviewerd
```

### 常用命令

```
//查看teamview信息
$ teamviewer --info

 TeamViewer                           13.2.75536  (RPM)

 TeamViewer ID:                        1315674770

 teamviewerd status                   ● teamviewerd.service - TeamViewer remote control daemon
   Loaded: loaded (/etc/systemd/system/teamviewerd.service; enabled; vendor preset: disabled)
   Active: active (running) since Thu 2019-06-27 05:11:13 EDT; 21min ago
  Process: 5796 ExecStart=/opt/teamviewer/tv_bin/teamviewerd -d (code=exited, status=0/SUCCESS)
 Main PID: 5798 (teamviewerd)
   Memory: 6.1M
   CGroup: /system.slice/teamviewerd.service
           └─5798 /opt/teamviewer/tv_bin/teamviewerd -d

Jun 27 05:11:13 localhost.localdomain systemd[1]: Starting TeamViewer remote control daemon...
Jun 27 05:11:13 localhost.localdomain systemd[1]: PID file /var/run/teamviewerd.pid not readable (yet?) after start.
Jun 27 05:11:13 localhost.localdomain systemd[1]: Started TeamViewer remote control daemon.


// 设置密码
$ teamviewer --passwd 123456

ok

```