#!/bin/bash
#copy original config over each time docker starts up as the ports/address change!
/bin/cp -f /etc/nginx/nginx_es.conf.original /etc/nginx/nginx_es.conf
sed -i "s|<proxy_pass_ip>|$ELASTICSEARCH_PORT_9200_TCP_ADDR|" /etc/nginx/nginx_es.conf
sed -i "s|<proxy_pass_port>|$ELASTICSEARCH_PORT_9200_TCP_PORT|" /etc/nginx/nginx_es.conf

nginx
