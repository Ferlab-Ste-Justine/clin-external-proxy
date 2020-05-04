export CONFIG_VERSION=2
cat external-proxy.conf | docker config create clin-external-proxy-v${CONFIG_VERSION} -