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
  // var dataObj=eval("("+data+")");//转换为json对象   
  alert(data.length);//输出root的子对象数量  
  var count = 0;
  for(var item in data){
  	alert(item);
	if(data[item]){
	  count++;
	  alert(item.title);
	   // $("#info").append(
	   //      "<div>" + data[item].title    + "</div>" +
	   //      "<div>" + data[item].link  + "</div><hr/>");
	   // });
	};
  };
  alert(count);
  // alert(data[0]);
  // alert(data[0].title);
  // alert(data[0].link);
  // $.each(data, function(i, item) {

  // });
});

$('#results').val(unescape(myresult));
function getUrlParam(name)
{
var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
var r = window.location.search.substr(1).match(reg);  //匹配目标参数
if (r!=null) return unescape(r[2]); return null; //返回参数值
}
</script>
