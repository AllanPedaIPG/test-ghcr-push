FROM alpine:latest

RUN apk upgrade
RUN apk update

ENTRYPOINT ['/bin/sh']
