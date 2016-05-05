---
layout: post
title:  "自定义navigation顶部标题"
date:   2015-07-27 16:39:40
categories: iOS update
---


{% highlight ruby %}
UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width-30, 18)];
UILabel *titleText = [[UILabel alloc] initWithFrame: CGRectMake((width-30-72)/2, 0, 72, 18)];
titleText.font = [UIFont systemFontOfSize:18];
[titleText setTextColor:[UIColor whiteColor]];
[titleText setText:@"积分商城"];
[titleView addSubview:titleText];
self.navigationItem.titleView = titleView;
{% endhighlight %}


