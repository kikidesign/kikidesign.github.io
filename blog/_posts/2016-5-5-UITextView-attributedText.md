---
layout: post
title:  "UITextView的行间距"
date:   2016-5-5 17:29:00
categories: iOS UITextView attributedText
---

UITextView的行间距
{% highlight ruby %}
UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 280.0f, 150.0f)];
[self.view addSubview:textView];
NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
paragraphStyle.lineSpacing = 5;
NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:15],NSParagraphStyleAttributeName:paragraphStyle};
textView.attributedText = [[NSAttributedString alloc] initWithString:textView.text attributes:attributes];
{% endhighlight %}