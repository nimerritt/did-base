FROM alpine:edge

MAINTAINER Nicholas Merritt <nimerritt@gmail.com>
# Install git and ssh
RUN apk update && apk add --no-cache \
  bash \
  git \
  openssh \
  openssl \
  ca-certificates \
  docker

COPY scripts/configure_git.sh /scripts/
RUN /scripts/configure_git.sh
