---
layout: post
title:  "iOS中对字符串进行UTF-8编码"
date:   2015-02-09 10:00:00
categories: iOS NSString UTF-8 
---

Encode：iOS中对字符串进行UTF-8编码，输出str字符串的UTF-8格式
{% highlight ruby %}
[str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
{% endhighlight %}
Deconde：解码，把str字符串以UTF-8规则进行解码
{% highlight ruby %}
[str stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
{% endhighlight %}

