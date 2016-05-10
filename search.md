---
layout: page
permalink: /search/
---

<section id="search-results" style="display: block;">
  <p>搜索结果</p>
  <div id="info"></div>
</section>
<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
var myresult = getUrlParam('value');
var json_url="http://www.tapirgo.com/api/1/search.json?token=57305e9714ad66564ac85250&query="+escape(myresult);
$.getJSON(json_url, function(data){
  //alert(data.length);
  //输出data的子对象数量  
  var count = 0;
  for(var item in data){
	if(data[item]){
	  alert(data[item].title);
	  alert($("#info"));
	  $("#info").append("<p>data[item].title</p>"); 
	  $("#info").append("<a>data[item].link</a>"); 
	   // $("#info").append(
	   //      "<div>" +     + "</div><hr/>" +
	   //      "<div>" + data[item].link  + "</div><hr/>");
	   // });
	};
  };
});

$('#results').val(unescape(myresult));
function getUrlParam(name)
{
var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
var r = window.location.search.substr(1).match(reg);  //匹配目标参数
if (r!=null) return unescape(r[2]); return null; //返回参数值
}
</script>
