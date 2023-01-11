---
layout: post
title:  "UITextView的页边距"
date:   2016-5-5 17:29:00
categories: iOS UITextView textContainerInset
---

UITextView的页边距
{% highlight ruby %}
UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 280.0f, 150.0f)];
[self.view addSubview:textView];
textView.textContainerInset = UIEdgeInsetsMake(10, 10, 10, 10);
{% endhighlight %}