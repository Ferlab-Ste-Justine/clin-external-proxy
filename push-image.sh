export VERSION=1

docker build -t chusj/clin-external-reverse-proxy:$VERSION .;

docker push chusj/clin-external-reverse-proxy:$VERSION;
