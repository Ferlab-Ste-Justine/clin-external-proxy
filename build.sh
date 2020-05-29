export VERSION=$(cat ./VERSION)
docker build -t chusj/clin-external-reverse-proxy:$VERSION .;