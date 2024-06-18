# FROM openwrt/rootfs:19.07.8

# RUN mkdir /var/lock
# RUN opkg update
# RUN opkg install bash tmate git golang


# CMD ["/bin/ash"] 
# # , "-c", "tmate -F -k /root/.ssh/id_rsa -p 2222 new-session -d -s tmate; tmate -F -k /root/.ssh/id_rsa -p 2222 wait tmate-session; tmate -F -k /root/.ssh/id_rsa -p 2222 display -p '#{tmate_ssh}'; while true; do sleep 1; done]


# FROM golang:alpine AS builder

# RUN apk add --no-cache git

FROM qmcgaw/godevcontainer:alpine

RUN apk add --no-cache curl unzip bash

# Install protoc (cf. http://google.github.io/proto-lens/installing-protoc.html)
ENV PROTOC_ZIP=protoc-3.13.0-linux-x86_64.zip
RUN curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.13.0/$PROTOC_ZIP \
    && unzip -o $PROTOC_ZIP -d /usr/local bin/protoc \
    && unzip -o $PROTOC_ZIP -d /usr/local 'include/*' \ 
    && rm -f $PROTOC_ZIP

# Install protoc-gen-go
# RUN go install github.com/golang/protobuf/protoc-gen-go