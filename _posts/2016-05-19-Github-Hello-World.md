---
layout: post
title:  "GitHub-Hello-World"
date:   2016-05-19 00:02:01
categories: Github 
---

Hello World项目是计算机编程一个历史悠久的传统。
这个简单的练习，是为了让你在学习新东西的时候容易开始。
让我们开始GitHub！

您将学习如何：

* 创建和使用库
* 启动和管理一个新的分支
* 修改一个文件，并将其推送到GitHub上提交
* 打开并合并拉请求

## 什么是GitHub？

GitHub的是版本控制和代码协作托管平台。它可以让你和其他人在任何地方合作开发项目。

本教程教您GitHub的关键内容像仓库，分支，提交和拉请求。您可以创建自己的Hello World库，并学习GitHub的拉请求工作流，用一种流行的方式来创建和审核的代码。

不需要编码

要完成本教程，你需要一个GitHub.com帐号和接入互联网。你不需要知道如何编码，使用命令行，或者安装Git（GitHub是基于Git版本控制软件）。

提示：当你在完成教程中的步骤时，你可以打开一个单独的浏览器窗口（或标签）以便看到它。

----------------

## 步骤1.创建一个库

库通常是用来组织一个单独的项目。库可以包含文件夹和文件，图像，视频，电子表格和数据集 - 任何你的项目需要。我们建议它包含一个自述文件，或者与有关项目信息的文件。 GitHub上可以很容易地在创建新库的同时添加一个(自述文件)。它还提供了其他常用选项，比如许可文件。

您的Hello-World库可以是一个你用来存储想法，资源，甚至与他人分享和讨论东西的地方。

### 创建一个新的存储库

1. 在右上角，旁边是你的头像或identicon(identicon是一种基于用户信息的哈希值生成图像的技术，通常使用用户登录时的IP地址作为输入值，并作为生成新建用户时的初始化头像用于保护用户隐私。)，单击，然后选择新建储存库。

2. 命名您的库 Hello-World。

3. 写一个简短的说明。

4. 选择初始化这个仓库有README(自述文件)

![create-new-repo](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/create-new-repo.png)

单击创建库 <img class="emoji" title=":tada:" alt=":tada:" src="https://assets.github.com/images/icons/emoji/unicode/1f389.png" height="20" width="20" align="absmiddle">

----------------

## 步骤2.创建一个分支

分支是在同一时间在同一库的不同版本上工作的一种方式。

默认情况下你的版本库有一个命名为master的分支被认为是主分支(你可以理解为大树的主树干)。我们用分支进行实验和编辑，在它们被提交到主分支之前。

当您创建了master主分支上的分支，表明你是在那个时间点对主分支做了一个复制或快照。如果当你在你的分支上工作时，有其他人修改了主分支的话，你可以通过拉请求来更新这些（新的修改）。

P.S. 这里要解释一下，此时你自己的分支依然是基于之前创建分支时的master；而拉请求之后获取到的master分支已经不再是之前的master分支了，而是其他人修改后的master分支。

此图显示：

* 主分支

* 一个叫“功能”的分支（因为我们正在这个分支上做“功能的工作”）

* 这个旅程是这样的：在这个功能被合并进主分支之前它需要先成为一个分支

![create-new-repo](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/branching.png)

你有没有保存不同版本的文件？就像是：

* story.txt
* 故事乔 - edit.txt
* 故事乔 - 编辑 - reviewed.txt

GitHub库里，分支完成类似的目标。

在GitHub上，我们的开发人员，作家和设计师使用分支将bug和功能从主分支分离，(以便单独)修复bug和开发功能。当一个更改是准备就绪，再将他们合并进他们原来的主分支。

要创建一个新的分支

1. 转到您的新的存储库的Hello-World。

2. 单击写着主分支的下拉菜单。

3. 键入一个分支名，readme-edits，到新分支的文本框。

4. 选择蓝色创建分支盒或按键盘上的“Enter”键。

![readme-edits](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/readme-edits.gif)

现在你有两个分支了，主分支和readme-edits。他们看起来完全一样，但很快就不是了！接下来，我们将增加我们的更改到新的分支。

----------------

[原文链接][GitHub-Hello-World]

[GitHub-Hello-World]: https://guides.github.com/activities/hello-world/


