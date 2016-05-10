---
layout: page
permalink: /search/
---
<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<input value='' type="text" id="value" />
<script type="text/javascript">
var test = getUrlParam('value');$('#value').val(test);
function getUrlParam(name)
{
var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //¹¹ÔìÒ»¸öº¬ÓÐÄ¿±ê²ÎÊýµÄÕýÔò±í´ïÊ½¶ÔÏó
var r = window.location.search.substr(1).match(reg);  //Æ¥ÅäÄ¿±ê²ÎÊý
if (r!=null) return unescape(r[2]); return null; //·µ»Ø²ÎÊýÖµ
} 
</script>

<div id="search">
  <form action="/search" method="get">
    <input type="text" id="search-query" name="q" placeholder="请输入搜索内容12334..." autocomplete="off">
  </form>
</div>

<section id="search-results" style="display: none;">
  <p>Search results</p>
  <div class="entries">
  </div>
</section>



<script id="search-results-template" type="text/mustache">
  {{#entries}}
    <article>
      <h3>
        {{#date}}<small><time datetime="{{pubdate}}" pubdate>{{displaydate}}</time></small>{{/date}}
        <a href="{{url}}">{{title}}</a>
      </h3>
    </article>
  {{/entries}}
</script>


<script type="text/javascript">
  $(function() {
    $('#search-query').lunrSearch({
      indexUrl: '/search.json',             // URL of the `search.json` index data for your site
      results:  '#search-results',          // jQuery selector for the search results container
      entries:  '.entries',                 // jQuery selector for the element to contain the results list, must be a child of the results element above.
      template: '#search-results-template'  // jQuery selector for the Mustache.js template
    });
  });
</script>