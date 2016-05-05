---
layout: post
title:  "NSCFArray insertObject:atIndex:]: mutating method sent to immutable object 的解决办法"
date:   2015-07-16 18:25:30
categories: iOS update
---

遇到了一个奇怪的问题，记录下：
将NSUserDefaults中保存的数据赋给一个可变数组NSMutableArray，
{% highlight ruby %}
	NSMutableArray *searchRecordArray = [[NSUserDefaultsstandardUserDefaults] objectForKey:@"SearchRecord"];
{% endhighlight %}
但是在对可变数组进行删除操作时却发生了下面的错误：
<p><font color='red'>NSCFArray insertObject:atIndex:]: mutating method sent to immutable object</font></p>

可数组明明是用NSMutableArray声明的呀...解决方法：再声明一个可变数组进行删除:
{% highlight ruby %}
	NSMutableArray *newsearchRecordArray = [NSMutableArray arrayWithArray:searchRecordArray];
{% endhighlight %}
