---
layout: post
title:  "去掉 NavigationBar 底部的那条黑线"
date:   2015-07-24 13:55:40
categories: iOS update
---

在AppDelegate.m文件中的方法didFinishLaunchingWithOptions:里面添加如下代码来修改:

{% highlight ruby %}
[[UINavigationBar appearance] setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
[[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
{% endhighlight %}

