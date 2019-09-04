
title: printf、sprintf与fprintf 的用法区分
date: 2018-12-10 19:06:42

categories: C/CPP
 

description: 掌握快捷键，效率提升半边天.
feature: img/键盘俏天下.jpg
toc: true
---

## printf、sprintf与fprintf 的用法区分

1.printf 是和标准输出文件(stdout)关联的,fprintf 则没有这个限制.
 
2.fprintf是用于文件操作的，fprintf是格式化输出到一个stream, 通常是到文件,原型是
```
int fprintf( FILE *stream, const char *format [, argument ]...);
```
3.sprintf是格式化输出到一个字符串,原型是：
  
```
int   sprintf(char *buffer, const char *format  [,  argument]... ;
```


> 
printf输出到标准输出流(stdout)

fprintf转到文件句柄(FILE*)

sprintf转到分配的缓冲区。char*)