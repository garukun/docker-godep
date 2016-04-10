FROM golang:1-alpine
MAINTAINER steve.jiang@gmail.com

RUN apk add -q --update \
    && apk add -q \
        git \
    && rm -rf /var/cache/apk/*

RUN go get -u github.com/tools/godep \
    && rm -rf $GOPATH/src/* \
    && rm -rf $GOPATH/pkg/*
