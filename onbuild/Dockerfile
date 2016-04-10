FROM garukun/godep
MAINTAINER steve.jiang@gmail.com

ONBUILD ARG GO_PROJECT
ONBUILD WORKDIR $GOPATH/src/$GO_PROJECT
ONBUILD COPY . $GOPATH/src/$GO_PROJECT
ONBUILD RUN godep get
ONBUILD RUN godep update ./...
# TODO(@garukun): Clean up deps downloaded to $GOPATH/{src,pkg}.