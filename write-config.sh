export CONFIG_VERSION=6
export CONFIG_NAME=clin-external-proxy-v${CONFIG_VERSION}
if [ "$1" = "dev" ]; then
    CONFIG_EXISTS=$(docker config ls | grep $CONFIG_NAME)
    #In dev, we overwrite config as a convenience. In production, revision numbers should be incremented
    if [ ! -z "$CONFIG_EXISTS" ]; then
        docker config rm $CONFIG_NAME;
    fi
    cat external-proxy-local.conf | docker config create $CONFIG_NAME -;
else
    cat external-proxy.conf | docker config create $CONFIG_NAME -;
fi
