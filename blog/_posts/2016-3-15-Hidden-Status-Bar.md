---
layout: post
title:  "隐藏状态栏"
date:   2016-3-15 10:15:00
categories: iOS
---

如果想要隐藏状态栏，有两种做法：

状态栏是否隐藏默认由控制器管理，也就是说，当前状态栏所对应的控制器决定是否隐藏状态栏。
UIViewController中提供了一个prefersStatusBarHidden方法用于查看当前的控制器显示的状态栏是否隐藏，默认这个方法返回的是NO，也就是不隐藏。但是并没有提供相应的方法来设置隐藏状态栏。
这种情况我们可以重写prefersStatusBarHidden方法，通过修改它的返回值达到目的。
{% highlight ruby %}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
{% endhighlight %}
这样状态栏就可以隐藏了。


另一种做法是不让控制器来决定是否隐藏状态栏，而是让[UIApplication sharedApplication]来决定。
{% highlight ruby %}
[UIApplication sharedApplication].statusBarHidden = YES;
{% endhighlight %}
运行程序发现状态栏并没有隐藏。查看文档可以发现：
Setting statusBarHidden does nothing if your application is using the default UIViewController-based status bar system.
意思是如果使用默认的控制器管理状态栏（第一种做法提到的），那么设置statusBarHidden是没有效果的。想要关闭控制器的管理，需要我们给Info.plist增加一个key:
View controller-based status bar appearance
并且设置为NO，这样就可以通过设置statusBarHidden来隐藏状态栏了。（这个key是Info.plist添加Key出现的下拉栏里的最后一个）


当控制器管理状态栏时
- (UIViewController *)childViewControllerForStatusBarHidden
- (UIViewController *)childViewControllerForStatusBarStyle
这两个方法可以将状态栏的控制权交给子控制器管理，如果返回nil则表示控制器自己来管理状态栏；如果返回子控制器，则表示子控制器来管理状态栏。比如在navigation controller中实现prefersStatusBarHidden方法可能并不管用，因为它可能默认在childViewControllerForStatusBarHidden中返回的是导航栈顶控制器，此时状态栏由栈顶控制器来决定。如果想让navigation controller来决定，那么可以在类中按下面的方式实现：
{% highlight ruby %}
- (UIViewController *)childViewControllerForStatusBarHidden
{
    return nil;
}
{% endhighlight %}
此时，状态栏的管理权在导航控制器。

