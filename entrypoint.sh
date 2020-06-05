#!/bin/bash

envsubst '${DOMAIN}' < /opt/external-proxy.template > /etc/nginx/conf.d/default.conf

exec "$@"