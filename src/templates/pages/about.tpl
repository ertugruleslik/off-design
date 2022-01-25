{% set pageTitle = "Off Design" %}

{% extends "includes/layout/layout.tpl" %}

{% block head %}
    {% include "includes/components/header/head.tpl" %}
{% endblock %}

{% block main %}
    {% include "includes/components/header/header.tpl" %}
    {% include "includes/components/banner.tpl" %}
    {% include "includes/components/filter.tpl" %}
    {% include "includes/components/about-main.tpl" %}
    {% include "includes/components/footer.tpl" %}
{% endblock %}

{% block footer %}

{% endblock %}
