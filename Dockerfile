FROM jwilder/nginx-proxy
MAINTAINER Matt Burke burkemw3@gmail.com

ADD ./nginx.tmpl /app/nginx.tmpl
