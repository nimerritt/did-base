FROM base/archlinux

MAINTAINER Nicholas Merritt <nimerritt@gmail.com>

RUN pacman -Sy --noconfirm  \
  git \
  openssh \
  docker \
  aws-cli

COPY scripts/configure_git.sh /scripts/
RUN /scripts/configure_git.sh
