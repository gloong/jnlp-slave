FROM jenkinsci/jnlp-slave:3.10-1-alpine

USER root

RUN apk update \
    && apk upgrade


RUN apk add --no-cache \
    git \
    curl \
    jq \
    openrc \
    py-pip \
    docker \
 && pip install \
    awscli

RUN rc-update add docker boot
