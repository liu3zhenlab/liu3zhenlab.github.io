---
title: Publications
# by default, expand this many years/sections
show: 3
---
{% for item in site.data.publications %}
{::options parse_block_html="true" /}
<details {% if forloop.index0 < page.show %}open{% endif %}>
  <summary><h2>{{item.year}}</h2></summary>
  {% for pub in item.pubs %}
  - {{ pub.citation }} {% if pub.doi %}[doi:{{ pub.doi }}](https://doi.org/{{ pub.doi }}){% endif %}
  {% endfor %}
  {{ item.pubs | map: "footnotes" | compact }}
</details>
{% endfor %}
