---
layout: post
title:  "Xcode git 忽略user interface state文件"
date:   2015-11-20 16:15:00
categories: iOS git
---

1. 退出xcdoe， 打开终端（Terminal），进入到你的项目目录下
2. 代码
{% highlight ruby %}
git rm --cached *.xcuserstate
git commit -m "Removed cached files"
git push
{% endhighlight %}

下次Xcode commit就不会包括user interface state
