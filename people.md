---
title: People
---
{% assign active = site.people | where:"alumnus", false %}
{% assign alumni = site.people | where:"alumnus", true %}

{% for person in active reversed %}
	{%- assign name = person.name -%}
	{%- assign email = person.email -%}
	{%- assign content = person.content -%}
	{%- assign photo = person.photo -%}
	{%- assign position = person.position -%}
	{%- include_md person.md %}
{% endfor %}

<hr/>
<details>
	<summary><h2>Alumni</h2></summary>
	{%- for person in alumni reversed -%}
		{%- assign name = person.name -%}
		{%- assign content = person.content -%}
		{%- assign photo = person.photo -%}
		{%- assign position = person.position -%}
		{%- include_md person.md -%}
	{%- endfor -%}
</details>
