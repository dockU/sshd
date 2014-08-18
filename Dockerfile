FROM dock0/service
MAINTAINER Jon Chen "docku@burrito.sh"

EXPOSE 22

ADD https://github.com/fly.keys /srv/sshd/authorized_keys
ADD sshd_config /etc/ssh/sshd_config
RUN /usr/bin/mkdir -p /var/run/sshd

RUN pacman -Syu --needed --noconfirm openssh openbsd-netcat

ADD run /service/sshd/run
