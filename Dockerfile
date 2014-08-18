FROM dock0/service
MAINTAINER Jon Chen "docku@burrito.sh"

EXPOSE 22

ADD sshd_config /etc/ssh/sshd_config

RUN pacman -Syu openssh netcat-openbsd
RUN /usr/bin/mkdir -p /var/run/sshd

ADD run /service/sshd/run
