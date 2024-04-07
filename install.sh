#!/bin/bash
#
# Copyright (c) Ebabil Software.

DOCKER_TAG=00.00.01

echo -e "\n==> EXECUTING @$(date -u +'%Y-%m-%d_%H-%M-%S'): ${0} $@\n"

main() {
    local now
    local -i exit_code=0

    now="$(date --utc +%FT%TZ)"
    echo "Current timestamp: ${now}" ; echo

    set -x

    docker build \
        -f docker/Dockerfile \
        -t ebx-ubuntu:latest . \
        --build-arg ARG_CREATED="${now}" \
        --build-arg ARG_VCS_REF="$(git rev-parse --short=8 HEAD)" \
        --build-arg ARG_DOCKER_TAG="${DOCKER_TAG}"

    exit_code=$?
    set +x

    if [[ ${exit_code} -ne 0 ]]; then
        die "Failed to build image ..." ${exit_code}
    fi
}

main $@

echo -e "\n==> FINISHED @$(date -u +'%Y-%m-%d_%H-%M-%S'): ${0} $@\n"