nginx-proxy-path
================

A docker container running nginx for reverse proxying connections to other
docker containers based on docker environment variables.

This is based on [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy/).
jwilder's implementation relies on different hostnames, possibly sub-domains.

I only wanted to buy the cheapest SSL certificate possible, which means using
URL paths for different services instead of hostnames (and subdomains).

Run it with: `docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock -t burkemw3/nginx-proxy-path`

Start other containers with: `docker run -e VIRTUAL_PATH=$foobar ...` and access
the containers on http://hostname/foobar.

Compatibility Notes
-------------------

`VIRTUAL_HOST` is nothing now. Long live `VIRTUAL_PATH`.

Using multiple `VIRTUAL_PATH`s might work. It hasn't been tested. URL
re-writing in the proxied container might get interesting.

`VIRTUAL_PORT` should work, but hasn't been tested.