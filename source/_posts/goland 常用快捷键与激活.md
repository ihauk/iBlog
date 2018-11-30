---
title: goland 常用快捷键与激活
---
# 常用快捷键总结

快捷键 | 功能说明 | 备注 |
---|--- |---
ctrl + e | 打开最近使用过的文件 |
ctrl + q | 显示选中函数的声明以及注释内容 |
alt  + q | 查看当前光标所在方法的名称 |
ctrl + x | 删除当前光标所在行|
ctrl + d | 复制当前光标所在行|
ctrl + f | 文件内搜索|
ctrl + g | 快速定位到某行|
ctrl + shift + i | 显示函数内容|
shift + ctrl + p | 显示变量的数据类型|
ctrl + w | 智能选中|
ctrl + b | 快速打开光标处的结构体或方法（跳转到定义处）|
ctrl +N | 可以跳转到 输入的结构体 |
ctrl + shift + n |可以快速打开输入的文件|
ctrl + j | 调用 live templete，可快速输入代码块|
ctrl + +/- | 可以将当前方法进行展开或折叠|
ctrl + alt + v | 生成表达式返回值 |表达式末尾使用。先不要写 "resp, err :="，按下快捷键后会自动生成。
shift + ctrl + a | 打开快速导航功能命令输入框|
ctrl + shift + f | 全局搜索|
双击shift | 打开智能搜索框：可搜索文件名、类名、包名和最近打开的文件

> 效果图请自行脑补，实践出真知


# golang 2.3 激活方法
1. 在host 文件中添加如下 配置
```
0.0.0.0 account.jetbrains.com
```
2. 访问 http://idea.lanyus.com   
点击或者注册码，将生成的注册码 粘贴到 goland中去，ok搞定


> 参考链接： https://blog.csdn.net/ouzhuangzhuang/article/details/81518525