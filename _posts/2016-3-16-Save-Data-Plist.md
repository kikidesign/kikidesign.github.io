---
layout: post
title:  "iOS数据存储的常用方法之plist存取方法"
date:   2016-3-16 17:40:00
categories: iOS plist 数据存储
---

plist文件存取方式

属性列表是一种XML格式的文件，拓展名为plist
如果对象是NSString、NSDictionary、NSArray、NSData、NSNumber等类型，就可以使用writeToFile:atomically:方法直接将对象写到属性列表文件中
我通过一个小的demo来测试这个plist文件 的存取过程.
在storyboard中拖入两个按钮,分别拖线,执行保存和读取的方法:
存储操作:
{% highlight ruby %}
NSString *docPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    //还要指定存储文件的文件名称,仍然使用字符串拼接
NSString *filePath = [docPath stringByAppendingPathComponent:@“aiche.plist"];
NSLog(@"%@",filePath);
//新建一个数组(作为例子)
NSArray *array = @[@"abc",@123,@"a-d-g"];
//将数组存储到文件中
[array writeToFile:filePath atomically:YES];
{% endhighlight %}

读取操作:
{% highlight ruby %}
//获取Documents目录
NSString *docPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
//还要指定存储文件的文件名称,仍然使用字符串拼接
NSString *filePath = [docPath stringByAppendingPathComponent:@"test.plist"]; 
//使用一个数组来接受数据
NSArray *array = [NSArray arrayWithContentsOfFile:filePath];
NSLog(@"%@",array);
{% endhighlight %}
我这里是使用NSArray来进行测试存取的,也可以使用字典.但是有一点需要注意,就是存取字符串的时候,最好不要使用plist文件,因为plist本身不支持字符串(这个可以通过新建一个plist文件,打开之后,发现其根节点处,只有数组和字典两个选项),而且字符串的存取方法也已经过期.