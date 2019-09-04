title: centos环境下安装libzip
date: 2019-8-10 19:06:42

categories: Linux
 
tags: [centos]

feature: img/键盘俏天下.jpg
toc: true
---

```
#安装依赖工具
yum install gcc
yum install zlib-devel
yum install make

#下载并编译源码安装libzip
wget https://nih.at/libzip/libzip-1.2.0.tar.gz

tar xzvf libzip-1.2.0.tar.gz
cd libzip-1.2.0
yum install zlib-devel
./configure
make
make insatll
ldconfig

# 设置环境变量 PATH  或者 LD_LIBRARY_PATH
```