FROM alpine:latest

# https://github.com/marketplace/actions/push-to-ghcr
# these are passed as build args
ARG BUILD_DATE
ARG GITHUB_SHA

ENV BUILD_DATE=$BUILD_DATE
ENV GITHUB_SHA=$GITHUB_SHA

RUN apk upgrade
RUN apk update

ENTRYPOINT ['/bin/sh']
