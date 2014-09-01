FROM jwilder/nginx-proxy
MAINTAINER Matt Burke burkemw3@gmail.com

VOLUME ["/etc/nginx/ssl"]

ADD ./nginx.tmpl /app/nginx.tmpl
