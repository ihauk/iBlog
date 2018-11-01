---
title: MAC环境安装protobuf简明教程
date: 2016-06-18 16:31:09
tags: [mac,protobuf]
---
protobuf 是什么？ 请百度！
本文的主要目的是记录安装 protobuf 的历程，以备以后查阅，同时供大家参考，请多多指教！
废话不多说，直接上步骤：

### 1. 下载 protobuf 的源码：
```	
git clone https://github.com/google/protobuf.git  
```
	
### 2. 安装 必要的工具：automake 与 libtool：
```
$ brew install automake  
$ brew install libtool  
```
	
### 3. 进入源码目录，Run autogen.sh
```
$ ./autogen.sh 
```
	
### 4. 安装 protobuf ：
```
$ ./configure  // --prefix=your path(指定安装路径)(可选) 
$ make check  
$ make  
$ make install  
```
> 默认安装到 /usr/local 目录下，若要自定义安装路径，执行configure时，指定--prefix=/usr/local/protobuf即可。例：	
```
$ ./configure --prefix=/usr/local/protobuf
```
	
### 5. 环境变量的配置 
如果你采取的是默认的安装路径，则不用特意的设置环境变量，终端里 直接运行 protoc 即可找到该命令。如果你采用了自定义的安装路径，那么最好配置一下环境变量，将它的bin和lib目录分别加入到PATH和LD_LIBRARY_PATH环境变量，以方便直接调用。要不然每次都要进入安装目录里 执行 protoc 命令，岂不是费时费力。
 	
如何配置环境变量，如下所示：
编辑 /etc/profile 文件，在文件末尾追加 
 	
``` 
export PATH=$PATH:/usr/local/protobuf/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/protobuf/lib
```

其中，/usr/local/protobuf 是你的自定义安装目录
	
### 注：安装过程中遇到的问题：

1. 步骤三 Run autogen.sh 的时候，一定要有梯子，科学上网你懂得
2. 步骤三 ./configure时，如果说没有权限，chmod +x configure
3. 步骤四 make check 的时候 可能会报错 fatal error: 'tr1/tuple' file not found，运行如下命令解决 [解决办法](https://github.com/google/protobuf/issues/51)在这里，终端运行如下命令

	```	
 ./configure CPPFLAGS=-DGTEST_USE_OWN_TR1_TUPLE=1 
 ```

4. 步骤五 配置环境变量的时候，/etc/profile 是一个只读文件，我是 找到 profile 文件，添加了写权限解决的。