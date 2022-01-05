{% set kitchenClass = "none" %}

<div class="tabs">
    <ul id="tabs-nav">
        <li><a href="#tab1">Latest</a></li>
        <li><a href="#tab2">Papular</a></li>
        <li><a href="#tab3">Comments</a></li>
    </ul>
    <div id="tabs-content">
        <div id="tab1" class="tab-content">
            {% include "includes/components/kitchen.tpl" %}
        </div>
        <div id="tab2" class="tab-content">
            {% include "includes/components/kitchen.tpl" %}
        </div>
        <div id="tab3" class="tab-content">
            {% include "includes/components/kitchen.tpl" %}
        </div>
    </div>
</div>