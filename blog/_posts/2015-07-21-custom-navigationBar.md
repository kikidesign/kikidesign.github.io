---
layout: post
title:  "自定义NavigationBar的背景颜色"
date:   2015-07-21 16:46:30
categories: iOS update
---

去掉NavigationBar底部的那条黑线，在AppDelegate.m文件中的方法didFinishLaunchingWithOptions里面添加如下代码来修改:

{% highlight ruby %}
CGSize imageSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width, 64);
UIGraphicsBeginImageContextWithOptions(imageSize, 0, [UIScreen mainScreen].scale);
[[UIColor colorWithRed:0.24f green:0.73f blue:0.91f alpha:1.00f] set];
UIRectFill(CGRectMake(0, 0, imageSize.width, 65));
UIImage *top_BG = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();
[[UINavigationBar appearance] setBackgroundImage:top_BG forBarMetrics:UIBarMetricsDefault];
[[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
{% endhighlight %}

