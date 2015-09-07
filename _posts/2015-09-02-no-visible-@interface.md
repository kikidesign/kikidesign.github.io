---
layout: post
title:  "no visible @interface for XXX declares the selector YYY"
date:   2015-09-02 14:57:00
categories: iOS error
---

异常信息：
{% highlight ruby %}
no visible @interface for XXX declares the selector YYY
{% endhighlight %}

一般而言，发生异常的代码行，是因为没有在.h文件interface接口中申明方法。



