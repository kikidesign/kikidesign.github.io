---
layout: post
title:  "GitHub-Hello-World"
date:   2016-05-19 00:02:01
categories: Github 
---

Hello World项目是计算机编程一个历史悠久的传统。
这个简单的练习，是为了让您在学习新东西的时候容易开始。
让我们开始GitHub！


您将学习如何：


* 创建和使用库

* 启动和管理一个新的分支

* 修改一个文件，并将其推送到GitHub上提交

* 打开并合并拉请求



## 什么是GitHub？



GitHub的是版本控制和代码协作托管平台。它可以让您和其他人在任何地方合作开发项目。



本教程教您GitHub的关键内容像仓库，分支，提交和拉请求。您可以创建自己的Hello World库，并学习GitHub的拉请求工作流，用一种流行的方式来创建和审核的代码。



不需要编码



要完成本教程，您需要一个[GitHub.com帐号]和接入互联网。您不需要知道如何编码，使用命令行，或者安装Git（GitHub是基于Git版本控制软件）。



提示：当您在完成教程中的步骤时，您可以打开一个单独的浏览器窗口（或标签）以便看到它。


----------------


## 步骤1.创建一个库


 
库通常是用来组织一个单独的项目。库可以包含文件夹和文件，图像，视频，电子表格和数据集 - 任何您的项目需要。我们建议它包含一个自述文件，或者与有关项目信息的文件。 GitHub上可以很容易地在创建新库的同时添加一个(自述文件)。它还提供了其他常用选项，比如许可文件。



您的Hello-World库可以是一个您用来存储想法，资源，甚至与他人分享和讨论东西的地方。



### 创建一个新的存储库



1. 在右上角，旁边是您的头像或identicon(identicon是一种基于用户信息的哈希值生成图像的技术，通常使用用户登录时的IP地址作为输入值，并作为生成新建用户时的初始化头像用于保护用户隐私。)，单击，然后选择新建储存库。



2. 命名您的库 Hello-World。



3. 写一个简短的说明。



4. 选择初始化这个仓库有README(自述文件)



![create-new-repo](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/create-new-repo.png)



单击创建库 <img class="emoji" title=":tada:" alt=":tada:" src="https://assets.github.com/images/icons/emoji/unicode/1f389.png" height="20" width="20" align="absmiddle">



----------------



## 步骤2.创建一个分支



分支是在同一时间在同一库的不同版本上工作的一种方式。



默认情况下您的版本库有一个命名为master的分支被认为是主分支(您可以理解为大树的主树干)。我们用分支进行实验和编辑，在它们被提交到主分支之前。



当您创建了master主分支上的分支，表明您是在那个时间点对主分支做了一个复制或快照。如果当您在您的分支上工作时，有其他人修改了主分支的话，您可以通过拉请求来更新这些（新的修改）。



P.S. 这里要解释一下，此时您自己的分支依然是基于之前创建分支时的master；而拉请求之后获取到的master分支已经不再是之前的master分支了，而是其他人修改后的master分支。



此图显示：



* 主分支

* 一个叫"功能"的分支（因为我们正在这个分支上做"功能的工作"）

* 这个旅程是这样的：在这个功能被合并进主分支之前它需要先成为一个分支



![create-new-repo](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/branching.png)



您有没有保存不同版本的文件？就像是：



* story.txt

* 故事乔 - edit.txt

* 故事乔 - 编辑 - reviewed.txt



GitHub库里，分支完成类似的目标。


在GitHub上，我们的开发人员，作家和设计师使用分支将bug和功能从主分支分离，(以便单独)修复bug和开发功能。当一个更改是准备就绪，再将他们合并进他们原来的主分支。



要创建一个新的分支



1. 转到您的新的存储库的Hello-World。

2. 单击写着主分支的下拉菜单。

3. 键入一个分支名，readme-edits，到新分支的文本框。

4. 选择蓝色创建分支盒或按键盘上的"Enter"键。



![readme-edits](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/readme-edits.gif)



现在您有两个分支了，主分支和readme-edits。他们看起来完全一样，但很快就不是了！接下来，我们将增加我们的更改到新的分支。



----------------

## 步骤3.制作并提交更改



好样的！现在，您已经在您自己的readme-edits分支的代码视图上了，它是主分支的拷贝。让我们做一些修改。



在GitHub上，保存更改被称为提交。每次提交都有一个关联的提交信息，这是一个关于为什么作出了这次特定变更的说明。提交信息能够让其他的参与者捕获您的历史更改记录，以便理解您做了什么，以及为什么(这样做)。



### 制作并提交修改



1. 点击README.md文件。

2. 单击文件视图编辑的右上角的铅笔图标<span class="octicon octicon-pencil"></span>。

3. 在编辑者一栏中，简单介绍下自己。

4. 撰写一条提交信息描述您的更改。

5. 点击提交更改按钮。



![commit](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/commit.png)



这些更改将只在您自己的readme-edits分支上的README文件上生效，所以现在这个分支所包含内容便会和主分支上的不同。



----------------

## 步骤4.打开一个pull请求



编辑的很好！现在，您已经在主分支上作出了修改，您可以打开一个拉请求。



拉请求是GitHub协作机制的心脏。当您打开一个拉请求，您提交更改并要求有人审查并把您贡献的代码合并到他们的分支。拉请求会比较两个分支的内容然后显示差别，或差异。那些变更，添加，和删减会用绿色和红色区别显示出来。



只要您做了一个提交，您可以打开一个拉请求并开始讨论，甚至在代码完成之前。



通过在您的拉请求消息中使用GitHub的[@mention提示系统]，您可以要求某个人或团队的反馈，无论他们是在大厅或10个时区之外。



您还可以在您自己的仓库打开拉请求和自己的库合并。这是在开展大项目之前，学习GitHub工作流的好方法。



### 为更改README打开一个拉请求



点击图片查看大图



<div class="markdown-body">
<table>
  <thead>
    <tr>
      <th>步骤</th>
      <th>截屏</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>点击<span class="octicon octicon-git-pull-request"></span>拉入请求选项卡，然后从拉请求页面，点击绿色的"新的拉请求"按钮。</td>
      <td><img src="https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/pr-tab.gif" alt="pr-tab"></td>
    </tr>
    <tr>
      <td>选择您所做的分支readme-edits，与主分支（原件）进行比较。</td>
      <td><img src="https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/pick-branch.png" alt="branch"></td>
    </tr>
    <tr>
      <td>查看在比较页面上的文件更改差异，在你要提交的时候确保他们正确。</td>
      <td><img src="https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/diff.png" alt="diff"></td>
    </tr>
    <tr>
      <td>当您对这些需要提交的更改都感到满意，请单击那个大大的绿色的"创建拉请求"按钮。</td>
      <td><img src="https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/create-pr.png" alt="create-pull"></td>
    </tr>
    <tr>
      <td>给您拉请求写个标题，再写一个关于更改的简短说明。</td>
      <td><img src="https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/pr-form.png" alt="pr-form"></td>
    </tr>
  </tbody>
</table>
</div>



当您完成了这些消息后，单击"创建拉要求"按钮！



提示：您可以使用的[emoji表情符号]和[拖放图片、GIF]到提交和拉请求。



----------------



## 步骤5.合并你的拉请求



在这最后一步里，是时候把你的更改从你的readme-edits分支合并到主分支里了。



1. 点击绿色的"合并拉请求"按钮将更改合并到主分支里。

2. 点击"确定合并"。

3. 在更改被混合之前，使用紫色盒子里的"删除分支"按钮前进并删除分支，



![merge-button](https://raw.githubusercontent.com/kikidesign/kikidesign.github.io/master/_image/merge-button.png)



### 庆祝！



通过完成本教程中，您学会了如何在GitHub上创建一个项目和制作一拉请求！<img class="emoji" title=":tada:" alt=":tada:" src="https://assets.github.com/images/icons/emoji/unicode/1f389.png" height="20" width="20" align="absmiddle"> <img class="emoji" title=":octocat:" alt=":octocat:" src="https://assets.github.com/images/icons/emoji/octocat.png" height="20" width="20" align="absmiddle"> <img class="emoji" title=":zap:" alt=":zap:" src="https://assets.github.com/images/icons/emoji/unicode/26a1.png" height="20" width="20" align="absmiddle">



这里是您在本教程中完成的：



* 创建一个开源代码库

* 启动并管理一个新的分支

* 修改一个文件，并提交这些更改到GitHub

* 打开和合并一个拉请求



看看你的GitHub个人资料，你会看到你的[新贡献方块图]（一种用方块颜色展示代码贡献频率的图表）！



如果您想了解更多关于拉请求的内容，我们建议您阅读[GitHub的流程指南]。你也可以访问[GitHub的探索页面] 并参与一个开源项目<img class="emoji" title=":octocat:" alt=":octocat:" src="https://assets.github.com/images/icons/emoji/octocat.png" height="20" width="20" align="absmiddle">



提示：检查我们的其他[指南]和[YouTube频道]以了解更多的GitHub入门指南。



最后更新于2016年4月7日



----------------

[原文链接][GitHub-Hello-World]

[GitHub-Hello-World]: https://guides.github.com/activities/hello-world/

[GitHub.com帐号]:https://github.com/                  "GitHub.com帐号"

[@mention提示系统]:https://help.github.com/articles/about-writing-and-formatting-on-github/#text-formatting-toolbar   "mention提示系统" 

[emoji表情符号]:https://help.github.com/articles/basic-writing-and-formatting-syntax/#using-emoji     "emoji表情符号"

[拖放图片、GIF]:https://help.github.com/articles/file-attachments-on-issues-and-pull-requests/        "拖放图片、GIF"

[新贡献方块图]:https://help.github.com/articles/viewing-contributions-on-your-profile-page/          "新贡献方块图"

[GitHub的流程指南]:https://guides.github.com/introduction/flow/  "GitHub的流程指南"

[GitHub的探索页面]:https://github.com/explore       "GitHub的探索页面"

[指南]:https://guides.github.com/     "指南"

[YouTube频道]:https://www.youtube.com/c/githubguides      "YouTube频道"




