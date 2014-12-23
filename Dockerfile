FROM dock0/service
MAINTAINER Jon Chen <docku@burrito.sh>

EXPOSE 22

ADD https://github.com/fly.keys /root/.ssh/authorized_keys

RUN pacman -Syu --needed --noconfirm openssh openbsd-netcat
RUN /usr/bin/mkdir -p /var/run/sshd
ADD sshd_config /etc/ssh/sshd_config

ADD run /service/sshd/run
