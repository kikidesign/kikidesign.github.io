---
layout: post
title:  "iOS-获取经纬度"
date:   2015-08-24 18:30:00
categories: iOS tabBar
---

首先要导入CoreLocation.Frame包

.h 文件
{% highlight ruby %}
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
 
@interface ViewController : UIViewController<CLLocationManagerDelegate>
@property (nonatomic, retain) CLLocationManager* locationMgr;
@property (nonatomic, retain) CLGeocoder* clGeocoder;// iso 5.0及5.0以上SDK版本使
@end
{% endhighlight %}

.m 文件
{% highlight ruby %}
#import "ViewController.h"
@interface ViewController ()
@end
 
@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
     
    self.locationMgr = [[CLLocationManager alloc] init];
 
    //设置代理
    self.locationMgr.delegate = self;
     
    // 设置定位精度
    // kCLLocationAccuracyNearestTenMeters:精度10米
    // kCLLocationAccuracyHundredMeters:精度100 米
    // kCLLocationAccuracyKilometer:精度1000 米
    // kCLLocationAccuracyThreeKilometers:精度3000米
    // kCLLocationAccuracyBest:设备使用电池供电时候最高的精度
    // kCLLocationAccuracyBestForNavigation:导航情况下最高精度，一般要有外接电源时才能使用
    self.locationMgr.desiredAccuracy = kCLLocationAccuracyBest;
     
    // distanceFilter是距离过滤器，为了减少对定位装置的轮询次数，位置的改变不会每次都去通知委托，而是在移动了足够的距离时才通知委托程序
    // 它的单位是米，这里设置为至少移动1000再通知委托处理更新;
    self.locationMgr.distanceFilter = 1000.0f;
     
    //开始定位
    [self.locationMgr startUpdatingLocation];   
}

// iso 6.0以上SDK版本使用，包括6.0。
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *cl = [locations objectAtIndex:0];
    NSLog(@"纬度--%f",cl.coordinate.latitude);
    NSLog(@"经度--%f",cl.coordinate.longitude);
}
 
//获取定位失败回调方法
#pragma mark - location Delegate
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Location error!");
}
@end
{% endhighlight %}

这样就可以了。



