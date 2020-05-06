# About

This repo is for the external internet-facing proxy for clin.

# Current Status

Ultimately, the image for the external reverse-proxy should be built and managed here. However, it currently resides in the frontend repo.

As a first step to decouple it, the configuration for the external reverse-proxy was moved here.

It is uploaded to Docker Swarm using a configuration map.

# Usage

## Configuration files

The **external-proxy.conf** file is the production configuration.

The **external-proxy-local.conf** file is the local dev configuration (without certificates).

## Uploading it

The **write-config.sh** script will write the configuration in a versioned config map (named clin-external-proxy-vYourVersionNumber). You can update the version number directly at the top of the script once the configuration is ready for prod.

You can load the dev configuration by running:

```
./write-config.sh dev
```

In dev mode, the script will upload **external-proxy-local.conf** instead of **external-proxy.conf** and will overwrite a pre-existing configuration with the same name if it exists (in prod, it will return an error if the version is not incremented).