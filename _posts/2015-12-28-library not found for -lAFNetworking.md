---
layout: post
title:  "library not found for -lAFNetworking"
date:   2015-12-28 11:45:00
categories: iOS
---

library not found for -lAFNetworking

在编译的时候有时候会报这个错误 "library not found for -l"，
这是由于我们在项目中使用了一些第三方的库，就比如使用AFNetworking的时候，报出的这个错误，
在这里是因为默认没有添加CocoaPods的目录引起的；
当Xcode在编译的时候却找不到这个库，从而导致如此。
所以我们要让Xcode知道这个库文件在哪里，从而在编译的时候轻松的找到它。

解决办法：
获取库文件所在的那个文件夹路径，添加到Target的Build Settings界面(搜索Library Search Paths)
添加 $(PROJECT_DIR)/Pods