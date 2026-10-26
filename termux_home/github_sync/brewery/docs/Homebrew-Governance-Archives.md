# Homebrew Governance Archives

{% assign governance_pages = site.pages | where: "category", "governance-archives" %}
{% assign marker = "-" %}

{% for item in governance_pages -%}
{{ marker }} [{{ item.title }}]({{ item.url }})
{% endfor %}

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=Homebrew-Governance-Archives.md
