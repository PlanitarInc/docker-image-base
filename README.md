This repository contains directives to build the planitar base image.

3 simple docker image rules:
  - Any docker image **SHOULD** be based on `planitar/base` image.
  - Only the functionality shared by **all** planitar docker images
    can be added to this image
  - Try keeping a hierarchical structure of docker images.
    For example, all `node.js` application should share a common
    docker image having `node.js` support.

# Instructions

Build:

```shell
make build
```

Push new image to registry:

```shell
make push
```

Clean:

```shell
make clean
```

# Example

Example of image based on `planitar/base` with curl command:

```Dockerfile
FROM planitar/base

RUN apt-get update -y && apt-get install -y curl && apt-get clean
```

# Current implementation

Currently the base image is based on `ubuntu:14.04`. The size of the image is 281MB.
This might be not the most space efficient solution, so in future we would like
to replace it by a more minimalistic image.
