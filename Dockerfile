FROM python:alpine

ARG CLI_VERSION=1.16.107

RUN apk -uv add --no-cache bash less jq && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /aws

CMD bash
