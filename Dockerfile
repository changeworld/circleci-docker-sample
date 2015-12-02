FROM ubuntu
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install packages for building Ruby, npm, Node.js
RUN apt-get update && \
    apt-get install -y --force-yes \
     build-essential \
     curl \
     git \
     libreadline-dev \
     libssl-dev \
     libyaml-dev \
     libxml2-dev \
     nodejs \
     npm \
     zlib1g-dev && \
    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10 && \
    npm install npm -g
