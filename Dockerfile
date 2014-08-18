FROM dock0/service
MAINTAINER Jon Chen "docku@burrito.sh"

EXPOSE 22

VOLUME ["/etc/ssh/keys/"]

ADD https://github.com/fly.keys /srv/sshd/authorized_keys
ADD sshd_config /etc/ssh/sshd_config
RUN /usr/bin/mkdir -p /var/run/sshd
RUN /usr/bin/mkdir -p /etc/ssh/keys/

RUN pacman -Syu --needed --noconfirm openssh openbsd-netcat

ADD run /service/sshd/run
