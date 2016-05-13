---
layout: post
title:  "Github极简教程"
date:   2016-05-12 9:26:00
categories: Github 
---


0.首先去Github上注册账号,建库。

1.首次提交，意思就是这个文件夹中的代码你还没有向Github提交过代码，打开终端terminal：

{% highlight ruby %}
cd /home/test
//(假如test就是你的用户名)/githubtest(这是个文件夹,你可以提前先建立好,这个文件夹也可以是你要提交代码的项目文件夹)
git init 
//这是初始化在这个文件夹中建立一个空库
git add  
//这个命令你可以直接git add .(注意.前面要有空格)这是把当前文件夹中的所有文件都加入到上传的列表中,
//你还可以添加具体的文件git add你要添加的文件(test/test/test.txt)
git commit -m "说明"
//这个说明以你自己随意(注意要加双引号),还要注意这个条命令最好这样写,网上的有文章说只用git commit这样不是不可以这样是可以这样的命令系统会自动用一个默认的应用程序打开一个文件让你输入说明,但如果系统没有默认打开的话那就不能继续往下执行了,反正都是要写说明,本来也没几个字,建议大家直接把命令写全,省的给自己找麻烦
git remote add origin https://github.com/test/testt.git  
//这里说两处地方origin这个相当于是个别名你可以自己随便写也可以写成当前文件夹的名,后面的地址是你在Github刚刚新建的库地址, 你建了哪几个库,你到Github找到你建的库点进去就能看到相应的地址.
git push -u origin master    
//开始上传了,然后会提示你输入你在Github上注册的用户名跟密码输入正确后就等着上传吧
{% endhighlight %}

2.更新代码

{% highlight ruby %}
cd /home/test   
//(假如test就是你的用户名)/githubtest(这个文件夹是你要提交代码的项目文件夹,前提是你已经用过第一种方法了)
git add . 
//或者添加具体的文件git add你要添加的文件(test/test/test.txt)
git commit -m   
//"说明"
git push -u origin master   
//还记的这个别名吗origin这个别名就是你用第一种方法首次向Github提交代码时你用的别名
{% endhighlight %}
以上就是Github的入门基本操作了。