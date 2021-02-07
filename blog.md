---
title: Blog
# Number of years to show expanded by default, older years are collapsed
show: 3
---
{% assign blogs = site.blog | group_by_exp: "item", "item.year" | sort: "name" %}
{% for year in blogs reversed %}
{::options parse_block_html="true" /}
<details {% if forloop.first %}open{% endif %}>
<summary>
<h2>{{ year.name }}</h2>
</summary>
{% for event in year.items reversed %}
### {{ event.date | date: "%b %d" }}

{% if event.img %}
<a href="{{ event.img }}" target="_blank" rel="noopener noreferrer" class="blog-img">
    <img src="{{ event.img }}" class="blog-img"/>
</a>
{% endif %}

{{ event.content }}

{% endfor %}
</details>

{% unless forloop.last %}-----{% endunless %}

{% endfor %}
