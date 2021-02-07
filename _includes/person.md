<details open>
	<summary>
		<h4>{{ name }}</h4>
		({{ position | default: "Undergraduate Research Assistant" }})
	</summary>
	{% if photo %}
		<img src="{{ photo }}" alt="{{ name }}" class="portrait" />
	{% endif %}
	{{ content | markdownify }}
	{% if email %}
		<p>
			Contacts: <a href="mailto:{{ email }}">{{ email }}</a>
		</p>
	{% endif %}
</details>
