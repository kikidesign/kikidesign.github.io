---
layout: post
title:  "NSJSONSerialization解析JSON"
date:   2015-02-11 10:00:00
categories: iOS JSON
---

{% highlight ruby %}
-(void) parseJsonData:(NSData *)data 
{ 
    NSError *error; 
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error]; 
    if (json == nil) { 
        NSLog(@"json parse failed \r\n"); 
        return; 
    } 
    NSArray *songArray = [json objectForKey:@"song"]; 
    NSLog(@"song collection: %@\r\n",songArray); 
 
    _song = songArray; 
    self.songIndex = 0; 
    NSDictionary *song = [songArray objectAtIndex:0]; 
    NSLog(@"song info: %@\t\n",song); 
} 
{% endhighlight %}
