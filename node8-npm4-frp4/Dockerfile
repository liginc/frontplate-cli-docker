FROM node:8-alpine
MAINTAINER LIG inc.

RUN apk add --no-cache bash ncurses

RUN npm install --global npm@4 && \
    npm install --global frontplate-cli@4 && \
    npm cache clean --force

VOLUME /workspace
WORKDIR /workspace

COPY install-and-build.sh /usr/bin
CMD install-and-build.sh
