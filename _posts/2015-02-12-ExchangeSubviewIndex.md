---
layout: post
title:  "用代码将一个uiview设置到最前面显示"
date:   2015-02-12 10:00:00
categories: iOS uiview
---

用代码将一个uiview设置到最前面显示
{% highlight ruby %}
[superView bringSubviewToFront:subview];
{% endhighlight %}

用第2层子视图 换 第1层子视图的位置self.view是第0层
{% highlight ruby %}
[self.view exchangeSubviewAtIndex:1 withSubviewAtIndex:2];
{% endhighlight %}
