---
layout: post
title:  "tabBar隐藏与显现 hidesBottomBarWhenPushed"
date:   2015-08-20 14:16:00
categories: iOS tabBar
---

这个问题说简单也简单,但是如果不知道,可会让很多人吃苦
隐藏UITabBarController的tabBar, 用它的一个属性hidesBottomBarWhenPushed隐藏了，
可是当pop返回的时候TabBar不显现了...

解决办法：
{% highlight ruby %}
self.hidesBottomBarWhenPushed = YES;
{% endhighlight %}
中的self改成你要push进入的那个viewcontroller
{% highlight ruby %}
viewcontroller.hidesBottomBarWhenPushed = YES;
{% endhighlight %}
这样就可以了。



