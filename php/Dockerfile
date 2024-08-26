ARG PHP_VERSION

FROM php:${PHP_VERSION}-fpm-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apk update && \
    apk add --no-cache \
        build-base \
        autoconf \
        bash && \
    pecl install \
        pcov \
        redis && \
    docker-php-ext-install \
        pdo_mysql && \
    docker-php-ext-enable \
        pcov \
        redis && \
    apk del \
        build-base \
        autoconf && \
    rm -rf /var/cache/apk/*