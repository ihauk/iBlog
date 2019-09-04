
title: pkg-config简介
date: 2019-8-12 19:06:42

categories: Linux
 
tags: [pkg-config]

description: pkg-config 维护了一个保存各个代码库的路径的数据库。当然这个”数据库” 非常的简单，其实就是一个特殊的目录，这个目录中有一系列的以 “.pc” 为后缀的文件
feature: img/键盘俏天下.jpg
toc: true
---

pkg-config 维护了一个保存各个代码库的路径的数据库。当然这个”数据库” 非常的简单，其实就是一个特殊的目录，这个目录中有一系列的以 “.pc” 为后缀的文件

### 作用
用来检索系统中安装库文件的信息,其主要功能如下：
   1、检查库的版本号。如果所需要的库的版本不满足要求，它会打印出错误信息
，避免链接错误版本的库文件。
   2、获得编译预处理参数，如宏定义，头文件的位置。
   3、获得链接参数，如库及依赖的其它库的位置，文件名及其它一些连接参数。
   4、自动加入所依赖的其它库的设置。
### 使用条件提条件
1、库本身在安装的时候必须提供一个相应的.pc文件，如果没有.pc文件的软件则一般是不支持pkg-config工具的使用的。
2、pkg-config必须知道要到哪里去寻找此.pc文件

环境变量PKG_CONFIG_PATH是用来设置.pc文件的搜索路径的，pkg-config按照设置路径的先后顺序进行搜索，直到找到指定的.pc 文件为止

```
$ locate zlib.pc
  /usr/lib64/pkgconfig/zlib.pc
$ export PKG_CONFIG_PATH=/usr/local/bin/pkg-config:$PKG_CONFIG_PATH

```



### 查看头文件位置
```
# 命令形式：pkg-config --cflags software_name

# demo
$ pkg-config --cflags opencv
```

### 查看lib库的位置
```
# 命令形式：pkg-config --libs software_name

# demo
$ pkg-config --libs opencv
```
