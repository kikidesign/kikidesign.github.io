---
layout: post
title:  "iOS获取当前时间"
date:   2015-10-30 15:50:00
categories: iOS Time Today
---

iOS获取当前时间

{% highlight ruby %}
NSDate *now = [NSDate date];
NSLog(@”now date is: %@”, now);

NSCalendar *calendar = [NSCalendar currentCalendar];
NSUInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:now];

int year = [dateComponent year];
int month = [dateComponent month];
int day = [dateComponent day];
int hour = [dateComponent hour];
int minute = [dateComponent minute];
int second = [dateComponent second];
{% endhighlight %}

