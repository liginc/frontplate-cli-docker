FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install -y curl gpg
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN apt-get clean

RUN npm install --global npm@4
RUN npm install --global frontplate-cli@4
