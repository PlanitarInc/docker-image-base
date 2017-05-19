#!/bin/bash

set -ex

docker run --rm ${IMAGE_NAME} locale | grep LANG=en_US.UTF-8
docker run --rm ${IMAGE_NAME} locale | grep LC_ALL=en_US.UTF-8

docker run --rm ${IMAGE_NAME} bash -c '\
  useradd dummy_user; \
  su dummy_user -c "gosu root ls -la /root"; \
'
