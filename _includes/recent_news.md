### News
{% assign data = site.news | reverse %}
{% for item in data | limit: 10 %}
    {%- if item.doi -%}
        {% assign link = item.doi | prepend: "https://doi.org/" %}
    {%- endif -%}
    {%- if item.link -%}
        {% assign link = item.link %}
    {%- endif -%}
    - {{ item.content | strip }} {% if link %}[Read more]({{ link }}){% endif %}
{% endfor %}

[Older news](./news.md)
