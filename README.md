![](https://github.com/cr-ste-justine/clin-external-proxy/workflows/Build/badge.svg)
![](https://github.com/cr-ste-justine/clin-external-proxy/workflows/Publish/badge.svg)


# About

This repo is for the external internet-facing proxy for clin.

# Usage

## Configuration files

The **external-proxy.conf** file is the nginx configuration. It is orchestrated in **docker-compose.yml**.

## Running It

Make sure your certificates are stored in Docker secrets:

https://github.com/cr-ste-justine/devops/tree/dev/certificates

To build the image locally, type:

```
./build.sh
```

To launch it, run:

```
./launch.sh
```

To stop it, run:

```
./teardown.sh
```

## Gitflow

Whenever you are about to merge to master, make sure you increment the image version in the **VERSION** file.

Once you merge to master, a pipeline will push the image.