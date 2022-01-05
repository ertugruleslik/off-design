{% set pageTitle = "Off Design" %}
{% set headerClass = "fix" %}

{% extends "includes/layout/layout.tpl" %}

{% block head %}
    {% include "includes/components/header/head.tpl" %}
{% endblock %}

{% block main %}
    {% include "includes/components/header/header.tpl" %}
    {% include "includes/components/breadcrumb.tpl" %}
    {% include "includes/components/detail-main.tpl" %}
    {% include "includes/components/footer.tpl" %}
{% endblock %}

{% block footer %}

{% endblock %}
