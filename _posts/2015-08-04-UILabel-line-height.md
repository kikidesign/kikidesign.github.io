---
layout: post
title:  "UILabel的行间距"
date:   2015-08-04 12:33:50
categories: iOS update
---


{% highlight ruby %}
UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(15, 17, width-30, 54)];
[label setNumberOfLines:3];
label.font = [UIFont systemFontOfSize:15];
[cell.contentView addSubview:label];
NSString *paragraphStr= @"相关商户确认后我们将会以站内消息以及手机短信的方式及时通知您。您也可以在“我的订单”中关注预约进程。";
[label setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:paragraphStr];
NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
[paragraphStyle1 setLineSpacing:6];
[attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [paragraphStr length])];
[label setAttributedText:attributedString1];
[label sizeToFit];
{% endhighlight %}


