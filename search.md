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
<input value='' type="text" id="value" />
<script type="text/javascript">
var test = getUrlParam('value');
// $('#value').val(test);
function getUrlParam(name)
{
var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
var r = window.location.search.substr(1).match(reg);
if (r!=null) return unescape(r[2]); return null;
} 
</script>
