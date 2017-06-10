FROM alpine:edge

MAINTAINER Nicholas Merritt <nimerritt@gmail.com>
# Install git and ssh
RUN apk update && apk add --no-cache \
  curl \
  bash \
  bash-completion \
  git \
  git-bash-completion \
  openssh \
  openssl \
  ca-certificates \
  docker

COPY scripts/configure_git.sh /scripts/
RUN /scripts/configure_git.sh
