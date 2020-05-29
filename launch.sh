SWARM=$(docker node ls -q 2>&1 >/dev/null)
if [[ $SWARM = Error* ]]; then
    echo "Docker must be running in swarm mode to execute this script";
    exit 1;
fi

if [ "$1" = dev ]; then
    docker build -t chusj/clin-external-reverse-proxy:dev -f Dockerfile-dev .;
    docker stack deploy --resolve-image never -c docker-compose-dev.yml clin-external-proxy;
else
    docker stack deploy -c docker-compose.yml clin-external-proxy;
fi