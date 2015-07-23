---
layout: post
title:  "Convert id to NSInteger"
date:   2015-07-23 16:09:30
categories: iOS update
---

将ID类型转换成NSInteger:

{% highlight ruby %}
// newQuestion is an NSDictionary defined somewhere
NSInteger questionId = [[newQuestion objectForKey:@"question_id"] integerValue];
{% endhighlight %}

