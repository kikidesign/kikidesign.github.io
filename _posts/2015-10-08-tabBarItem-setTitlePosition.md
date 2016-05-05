---
layout: post
title:  "调整tabBarItem的文本位置"
date:   2015-10-08 15:33:00
categories: iOS tabBarItem
---

调整tabBarItem的文本位置：

{% highlight ruby %}
[self.navigationController.tabBarItem setTitlePositionAdjustment:UIOffsetMake(CGFloat horizontal, CGFloat vertical)];
{% endhighlight %}

第一个为水平位置，第二个为垂直位置

