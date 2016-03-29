---
layout: post
title:  "iOS 计算两个经纬度之间的距离"
date:   2016-3-29 17:26:00
categories: iOS CoreLocation LBS
---

iOS 计算两个经纬度之间的距离
{% highlight ruby %}
#import <CoreLocation/CoreLocation.h>
#import <Corelocation/CLLocationManagerDelegate.h>
……
CLLocation* curLocation = [[CLLocation alloc] initWithLatitude:lat1 longitude:lng1];
CLLocation* otherLocation = [[CLLocation alloc] initWithLatitude:lat2 longitude:lng2];
double distance  = [curLocation distanceFromLocation:otherLocation];
……
{% endhighlight %}