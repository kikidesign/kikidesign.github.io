---
layout: post
title:  "Github Pages提交后未能及时显示的原因"
date:   2016-05-12 9:26:00
categories: Github Pages
---


Github Pages提交以后，我们可以看到页面已经被commit到了服务器，也并没有收到报错邮件，

但是有的时候却未能如愿的显示出来，我们往往以为这是服务器缓存造成的延时(当然事实也确实如此)...

那有什么办法能解决让我们能及时看到更新的页面呢？其实秘密就在于date：

{% highlight ruby %}
 date:   2016-05-12 9:26:00
{% endhighlight %}

原因是Github Pages的服务器采用的是格林威治时间，而我们本地一般采用的是北京时间，

由于北京时间比格林威治时间要早整整8个小时，换句话说你写博客时用的北京时间提交到Github Pages的服务器，

它会认为，这件事情还未发生！！

OK,这样解决方案就很简单了，你想即时看到你更新的博客么？把你的date改成格林威治时间之前的时间吧~