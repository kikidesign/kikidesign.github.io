---
layout: post
title:  "-[__NSCFNumber rangeOfCharacterFromSet:]: unrecognized selector sent to instance"
date:   2015-08-28 11:46:00
categories: iOS __NSCFNumber
---

这个是类型的不匹配，就是自己还不知情的情况下把NSNumber类型的数值赋给字符串。

原始代码：
{% highlight ruby %}
myLabel.text = [bankAccount valueForKey:@"account"];
{% endhighlight %}
解决办法：
{% highlight ruby %}
myLabel.text = [NSString stringWithFormat:@"%@",[bankAccount valueForKey:@"account"]];
{% endhighlight %}
这个错误，改成这样就可以了。



