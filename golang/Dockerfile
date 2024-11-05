FROM alpine:latest

ENV GO_VERSION=1.23.1

WORKDIR /app

RUN apk add --no-cache \
    wget \
    tar \
    zsh \
    git && \
    wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz && \
    wget -O - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh && \
    tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && \
    rm go${GO_VERSION}.linux-amd64.tar.gz && \
    apk del wget tar && \
    rm -rf /var/cache/apk/*

ENV PATH="/usr/local/go/bin:${PATH}"

SHELL ["/bin/zsh", "-c"]
