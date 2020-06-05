FROM nginx:1

COPY external-proxy.template /opt/external-proxy.template
COPY entrypoint.sh /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["nginx", "-g", "'daemon off;'"]