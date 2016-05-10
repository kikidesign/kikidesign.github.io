---
layout: page
permalink: /search/
---

<section id="search-results" style="display: block;">
  <p>搜索结果</p>
  <div class="entries">
  </div>
</section>

<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<input value='' type="text" id="results" />
<script type="text/javascript">
var test = getUrlParam('value');
$('#results').val(unescape(test));
function getUrlParam(name)
{
var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
alert(window.location.search);
var r = window.location.search.substr(1).match(reg);  //匹配目标参数
if (r!=null) return unescape(r[2]); return null; //返回参数值
}
</script>
