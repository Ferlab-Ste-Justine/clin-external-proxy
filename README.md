# About

This repo is for the external internet-facing proxy for clin.

# Usage

## Configuration files

The **external-proxy.conf** file is the nginx configuration. It is orchestrated in **docker-compose.yml**.

## Running It

Make sure your certificates are stored in Docker secrets:

https://github.com/cr-ste-justine/devops/tree/dev/certificates

To run it in production, type:

```
./launch.sh
```

To run it for development, type:

```
./launch.sh dev
```

## Gitflow

Whenever you are about to merge to master, make sure you increment the image version in the **push_image.sh** script.

Once you merge to master, a pipeline will push the image.