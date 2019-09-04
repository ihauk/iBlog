
title: vim-plus安装经验谈
date: 2019-8-10 19:06:42

categories: C/CPP
 
tags: [vim]

description: vim 开发利器
feature: img/键盘俏天下.jpg
toc: true
---

# vim plus 安装
vimPlus 的github 地址如下
```
https://github.com/chxuan/vimplus
```

可参考github 链接安装 vimplus。本人 linux 环境，主要进行如下操作

```
git clone https://github.com/chxuan/vimplus.git ~/.vimplus
cd ~/.vimplus
./install.sh
```

# 解决ycmd报错
> 如果对解决过程不感兴趣，可以直接跳到最后一部分(总结部分)，进行安装

当使用 vim xx.cpp 打开文件时，报错
```
The ycmd server SHUT DOWN (restart with ':YcmRestartServer'). Unexpected exit code 1.
```
百度查询后，得出结论 应该是 YouCompleteMe 没有安装成功。所以重新安装之
执行如下命令
```
cd ~/.vim/plugged/YouCompleteMe
./install.py
```
执行 install.py 的时候，提醒执行 git submodule update --init --recursive命令。
那么按照要求执行 
```
git submodule update --init --recursive
```
问题又来了
```
$ git submodule update --init --recursive
正克隆到 'third_party/go/src/golang.org/x/tools'...
fatal: unable to access 'https://go.googlesource.com/tools/': Failed connect to go.googlesource.com:443; Connection timed out
无法克隆 'https://go.googlesource.com/tools' 到子模组路径 'third_party/go/src/golang.org/x/tools'
无法递归进子模组路径 'third_party/ycmd'
```
网络应该是被墙了，重点来了，解决办法就是先从git上clone下来然后拷贝到相应目录：
```
git clone https://github.com/golang/tools.git

cp -r tools ~/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x
```

然后在 ~/.vim/plugged/YouCompleteMe 目录下执行一下

```
git submodule update --init --recursive

./install.py
```

问题解决完成，可以放心使用了。

# 总结
综上，如果对问题的具体内容不care，可以直接参考如下安装步骤

```
//安装vimplus
git clone https://github.com/chxuan/vimplus.git ~/.vimplus
cd ~/.vimplus
./install.sh

// 重装YouCompleteMe
cd ~/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x
git clone https://github.com/golang/tools.git

cd ~/.vim/plugged/YouCompleteMe
git submodule update --init --recursive
./install.py
```


