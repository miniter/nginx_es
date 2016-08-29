#!/bin/bash
#copy original config over each time docker starts up as the ports/address change!
/bin/cp -f /etc/nginx/nginx_es.conf.original /etc/nginx/nginx_es.conf

nginx
