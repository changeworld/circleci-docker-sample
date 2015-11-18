FROM ubuntu
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

RUN apt-get update && \
 apt-get install -y nginx
