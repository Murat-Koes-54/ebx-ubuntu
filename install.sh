#!/bin/bash
#

docker build \
    -f docker/Dockerfile \
    -t ebx-ubuntu:latest . \
    --build-arg ARG_VCS_REF="$(git rev-parse --short=8 HEAD)"