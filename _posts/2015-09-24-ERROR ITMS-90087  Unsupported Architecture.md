---
layout: post
title:  "ERROR ITMS-90087: "Unsupported Architecture. Your executable contains unsupported architecture '[x86_64, i386]'.""
date:   2015-09-24 11:03:00
categories: iOS Error Submit
---

提交App Store报错：
ERROR ITMS-90087: "Unsupported Architecture. Your executable contains unsupported architecture '[x86_64, i386]'."

错误分析：这是由于使用的第三方类库同时包含了模拟器和真实设备的类库造成的(the simulator (x86_64) and the actual devices (ARM))

解决方法：待续 整理中...
