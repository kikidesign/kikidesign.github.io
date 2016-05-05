---
layout: post
title:  iOS8：UILabel如何自适应高度（自动换行）
date:   2015-06-12 16:30:51
categories: iOS blog update
---

直接上代码

{% highlight ruby %}
UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, 300, 100)]; 
label.numberOfLines = 0; 
label.lineBreakMode = NSLineBreakByWordWrapping; 
label.text =@"我又专心察明智慧、狂妄和愚昧,乃知这也是捕风.因为多有智慧,就多有愁烦；加增知识的,就加增忧伤.And I applied my mind to know wisdom and to know madness and folly.I perceived that this also is but a chasing after wind.For in much wisdom is much vexation,and those who increase knowledge increase sorrow."; 
label.font =[UIFont systemFontOfSize:14];
CGSize size =[label sizeThatFits:CGSizeMake(label.frame.size.width, MAXFLOAT)]; 
label.frame =CGRectMake(10, 100, 300, size.height); 
[self.view addSubview:label];
{% endhighlight %}

这里需要特别指出的是：在计算MAXFLOAT的时候，字体的大小label.font是会有影响的！！
