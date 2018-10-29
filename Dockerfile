FROM node:alpine

LABEL maintainer.name="Zeeshan Ahmad"
LABEL maintainer.email="ziishaned@gmail.com"

ENV BUILD_PACKAGES  \
    g++             \
    gcc             \
    curl            \
    make            \
    bzip2           \
    python          \
    py-pip          \
    openssl         \
    libcurl         \
    curl-dev        \
    alpine-sdk      \
    ca-certificates

RUN apk update \
    && apk add --update ${BUILD_PACKAGES} \
    && curl --version \
    && openssl version -a \
    && rm -rf /var/cache/apk/*