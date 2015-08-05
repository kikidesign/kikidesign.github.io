---
layout: post
title:  "在String上加一条横线表示删除"
date:   2015-08-05 13:13:50
categories: iOS update
---


{% highlight ruby %}
NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"aaaaaaaaaa"];
[string setAttributes:@{NSStrikethroughStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleSingle]} range:NSMakeRange(0, string.length)];
label.attributedText = string; 
{% endhighlight %}


