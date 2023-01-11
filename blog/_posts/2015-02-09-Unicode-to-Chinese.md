---
layout: post
title:  "iOS：将Unicode转换成中文"
date:   2015-02-09 10:00:00
categories: iOS Unicode
---

{% highlight ruby %}
+ (NSString *)replaceUnicode:(NSString *)unicodeStr
{
NSString *tempStr1 = [unicodeStr stringByReplacingOccurrencesOfString:@"\\u"withString:@"\\U"];
NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\""withString:@"\\\""];
NSString *tempStr3 = [[@"\""stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
NSString* returnStr = [NSPropertyListSerializationpropertyListWithData:tempData options:NSPropertyListImmutable format:NULL error:NULL];
return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n"withString:@"\n"];
}
{% endhighlight %}
