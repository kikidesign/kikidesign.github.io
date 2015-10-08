---
layout: post
title:  "Xcode git 忽略user interface state文件"
date:   2015-09-06 11:29:00
categories: iOS git
---

1. 退出xcdoe， 打开终端（Terminal），进入到你的项目目录下
2. 在终端键入  git rm --cached [YourProjectName].xcodeproj/project.xcworkspace/xcuserdata/[YourUsername].xcuserdatad/UserInterfaceState.xcuserstate
3. 在终端键入  git commit -m 'Removed file that shouldn't be tracked'
4. 在你的项目目录下新建.gitignore文件，加入如下几行
{% highlight ruby %}
*.xcuserstate
project.xcworkspace
xcuserdata
UserInterfaceState.xcuserstate
project.xcworkspace/
xcuserdata/
UserInterface.xcuserstate 
{% endhighlight %}
5. 重新打开Xcode commit, push。
