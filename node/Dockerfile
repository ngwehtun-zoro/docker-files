ARG VERSION

FROM node:${VERSION}

RUN apk update && \
    apk add --no-cache \
    git && \
    rm -rf /var/cache/apk/*