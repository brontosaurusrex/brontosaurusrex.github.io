---
layout: page
title: Client side search
published: false
---
Note: Ignores pages, only index posts.  
<form action="/search" method="get">
  <!-- <label for="search-box">Search</label> -->
  <input type="text" id="search-box" name="query">
  <input type="submit" value="search">
</form>

<ul id="search-results"></ul>

<script>
  window.store = {
    {% for post in site.posts %}
      "{{ post.url | slugify }}": {
        "title": "{{ post.title | xml_escape }}",
        "content": {{ post.content | strip_html | strip_newlines | jsonify }},
        "url": "{{ post.url | xml_escape }}"
      }
      {% unless forloop.last %},{% endunless %}
    {% endfor %}

  };
</script>
<script src="/public/js/lunr.min.js"></script>
<script src="/public/js/search.js"></script>
