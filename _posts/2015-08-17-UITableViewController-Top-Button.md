---
layout: post
title:  "如何在UITableViewController顶部加一个不动的按钮？"
date:   2015-08-07 10:31:50
categories: iOS update
---

方法一：

1.继承UIViewController然后再去实现UITableView的代理方法
2.自定义一个UITableView，给它设定坐标
3.添加那个不动的按钮到view上

方法二：

导航栏加button是可行的；另外tableView有设置头视图的方法：setHeaderView.

