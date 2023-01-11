---
layout: page
permalink: /search/
---

<ul class="post-list">
</ul>
<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
var myresult = getUrlParam('value');
var json_url="http://www.tapirgo.com/api/1/search.json?token=57305e9714ad66564ac85250&query="+escape(myresult);
$.getJSON(json_url, function(data){
	if(data.length>0){
	  //输出data的子对象数量  
	  for(var item in data){
		if(data[item]){
		  $(".post-list").append("<li><h2><a href=" + 'http://'+ data[item].link + ">" + data[item].title + "</a></h2></li>"); 
		  // $(".post-list").append("<li><h2><a href=" + 'http://'+ data[item].link + ">" + data[item].title + "</a></h2><span class='post-meta'>"+ data[item].published_on + "</span></li>");
		};
	  };
	}else{
		$("#post-list").append("<li><h2>" + "对不起，未能找到搜索内容~" + "</h2></li><br/>")
	}
});

$('#results').val(unescape(myresult));
function getUrlParam(name)
{
var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
var r = window.location.search.substr(1).match(reg);  //匹配目标参数
if (r!=null) return unescape(r[2]); return null; //返回参数值
}
</script>
