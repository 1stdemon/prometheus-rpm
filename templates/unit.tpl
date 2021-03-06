# -*- mode: conf -*-

[Unit]
{% block unit %}
Description={{summary}}
Documentation={{URL}}
After=network.target
{% endblock unit %}

[Service]
{% block service %}
EnvironmentFile=-/etc/default/{{name}}
User=prometheus
ExecStart=/usr/bin/{{name}} ${{name|upper}}_OPTS
Restart=on-failure
{% endblock service %}

[Install]
{% block install %}
WantedBy=multi-user.target
{% endblock install %}
