#!/bin/bash

set -ex

docker run --rm ${IMAGE_NAME} locale | grep LANG=en_US.UTF-8
docker run --rm ${IMAGE_NAME} locale | grep LC_ALL=en_US.UTF-8

docker run --rm ${IMAGE_NAME} bash -c '\
  useradd dummy_user; \
  su dummy_user -c "gosu root ls -la /root"; \
'

docker run --rm ${IMAGE_NAME} tini --version | \
  grep -q '^tini version 0.18.0 - git.fec3683$'
