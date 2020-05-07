# About

This repo is for the external internet-facing proxy for clin.

# Usage

## Configuration files

The **external-proxy.conf** file is the production configuration. It is orchestrated in **docker-compose.yml**.

The **external-proxy-local.conf** file is the local dev configuration (without certificates). It is orchestrated in **docker-compose-dev.yml**.

## Running It

To run it in production, type:

```
./launch.sh
```

To run it for development, type:

```
./launch.sh dev
```

## Push Images

To create a new image for production:

- Update the image version in the **push-image.sh** script
- Update the orchestration with the new image version in the **docker-compose.yml** orchestration
- Run the **push-image.sh** script