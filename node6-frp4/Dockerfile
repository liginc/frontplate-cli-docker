FROM node:6-alpine
MAINTAINER LIG inc.

RUN apk add --no-cache bash ncurses git

RUN npm install --global frontplate-cli@4 && \
    npm cache clean --force

VOLUME /workspace
WORKDIR /workspace

COPY install-and-build.sh /usr/bin
CMD install-and-build.sh
