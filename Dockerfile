FROM ubuntu
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install packages for git
RUN apt-get update && \
    apt-get install -y --force-yes \
     git
