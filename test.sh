#!/bin/bash

set -e

docker run --rm ${IMAGE_NAME} locale | grep -q LANG=en_US.UTF-8
docker run --rm ${IMAGE_NAME} locale | grep -q LC_ALL=en_US.UTF-8

docker run --rm ${IMAGE_NAME} bash -c '\
  useradd dummy_user; \
  su dummy_user -c "gosu root ls -a /root"; \
' | grep -q '^.bashrc$'

docker run --rm ${IMAGE_NAME} tini --version | \
  grep -q '^tini version 0.18.0 - git.fec3683$'
