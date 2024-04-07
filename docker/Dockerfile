# syntax=docker/dockerfile:1
#
# Copyright (c) Ebabil Software.

FROM ubuntu:22.04

ARG ARG_CREATED
ARG ARG_VCS_REF
ARG ARG_DOCKER_TAG

# Open Containers Initiative (OCI).
# https://specs.opencontainers.org/image-spec/annotations/

LABEL \
    org.opencontainers.image.authors="Ebabil Software" \
    org.opencontainers.image.created="${ARG_CREATED}" \
    org.opencontainers.image.version="${ARG_DOCKER_TAG}" \
    org.opencontainers.image.description="Ebabil Base Image from an Ubuntu 22.04 (jammy)" \
    org.opencontainers.image.documentation="https://github.com/Murat-Koes-54/ebx-ubuntu" \
    org.opencontainers.image.source="https://github.com/Murat-Koes-54/ebx-ubuntu" \
    org.opencontainers.image.title="ebx-ubuntu" \
    org.opencontainers.image.url="https://github.com/Murat-Koes-54/ebx-ubuntu" \
    org.opencontainers.image.vendor="Ebabil Software" \
    org.opencontainers.image.license="https://github.com/Murat-Koes-54/ebx-ubuntu/blob/main/LICENSE"

LABEL \
    org.label-scheme.vcs-url="https://github.com/Murat-Koes-54/ebx-ubuntu" \
    org.label-scheme.vcs-ref="${ARG_VCS_REF}"