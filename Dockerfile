FROM ubuntu
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install packages for JDK, Scala, npm, Node.js
RUN \
 apt-get update && \
 apt-get install -y --force-yes \
  curl \
  default-jdk \
  git \
  nodejs \
  npm \
  scala \
  wget
