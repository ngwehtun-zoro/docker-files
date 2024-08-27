#!/bin/bash

export $(grep -v '^#' .env | xargs) && \

docker build \
    --build-arg PHP_VERSION=$PHP_VERSION \
    -t dev-php:$PHP_VERSION-fpm-alpine \
    .