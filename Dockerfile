FROM nginx:1

COPY external-proxy.conf /etc/nginx/conf.d/default.conf