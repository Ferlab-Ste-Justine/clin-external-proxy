export VERSION=1.0.0

docker build -t chusj/clin-external-reverse-proxy:$VERSION .;

docker push chusj/clin-external-reverse-proxy:$VERSION;
