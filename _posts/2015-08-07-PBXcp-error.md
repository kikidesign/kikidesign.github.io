---
layout: post
title:  "PBXcp error - No such file or directory"
date:   2015-08-07 10:31:50
categories: iOS update
---

算是Xcode比较常见的一个编译错误了，原因往往是添加或删除美术资源的时候出错。虽然是小问题，但出现的频率很高。

解决方法（可以依次尝试，总有一种能最终解决问题）：
方法1.退出Xcode，然后从finder里面进入~/Library/Developer/Xcode/DerivedData 删掉里面所有的内容，然后重启Xcode试试看

方法2.上面的操作也可以直接在Xcode的organizer中完成，在organizer里面切换到projects，然后delete掉derived data
在target设置中删掉Prefix Header的值，重启Xcode试试看
最后恢复Prefix Header的设置

方法3：
还是在Xcode里面
项目-targets-build phases，
然后从copy bundle resources里面删掉红色的错误资源文件


