---
layout: post
title:  "关于Build Active Architecture Only属性"
date:   2015-11-24 11:10:00
categories: iOS git
---

这个属性设置为`YES`，是为了debug的时候编译速度更快，它只编译当前的architecture版本。  
而设置为`NO`时，会编译所有的版本。  
这个是设备对应的architecture：  
armv6：iPhone 2G/3G，iPod 1G/2G  
armv7：iPhone 3GS/4/4s，iPod 3G/4G，iPad 1G/2G/3G  
armv7s：iPhone5, iPod5  
编译出的版本是向下兼容的，比如你设置此值为`YES`，用iphone4编译出来的是armv7版本的，iphone5也可以运行，但是armv6的设备就不能运行。
所以，一般debug的时候可以选择设置为`YES`，release的时候要改为`NO`，以适应不同设备。

