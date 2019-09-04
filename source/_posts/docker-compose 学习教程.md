title: docker-compose安装与使用
date: 2019-8-16 19:06:42

categories: Linux
 
tags: [docker]

description: Compose是一个用于定义和运行多个Docker容器的编排工具。可以一条命令启动多个容器。主要是解决了容器与容器之间如何管理编排的问题。
feature: img/键盘俏天下.jpg
toc: true
---

# 什么是docker-compose

Compose是一个用于定义和运行多个Docker容器的编排工具。可以一条命令启动多个容器。主要是解决了容器与容器之间如何管理编排的问题。

# 下载安装
```
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

#添加可执行权限
sudo chmod +x /usr/local/bin/docker-compose

#验证
docker-compose --version
```

# 使用
```
docker-compose -f asr-compose.yml up -d
docker-compose -f asr-compose.yml stop
docker-compose -f asr-compose.yml down
... 
```