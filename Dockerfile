FROM base/archlinux

MAINTAINER Nicholas Merritt <nimerritt@gmail.com>

RUN pacman -Sy --noconfirm git 
COPY configure_git.sh /tmp/
RUN /tmp/configure_git.sh

