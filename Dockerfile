FROM jenkinsci/jnlp-slave:3.10-1-alpine

USER root

RUN apk add --no-cache \
    jq \
    py-pip \
    docker \
 && pip install \
    awscli

RUN rc-update add docker boot
