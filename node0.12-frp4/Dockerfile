FROM node:0.12
MAINTAINER LIG inc.

RUN npm install --global frontplate-cli@4 && \
    npm cache clean --force

VOLUME /workspace
WORKDIR /workspace

COPY install-and-build.sh /usr/bin
CMD install-and-build.sh
