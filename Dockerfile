FROM docku/sshd
MAINTAINER Jon Chen "docku@burrito.sh"

ADD start.sh /root/start.sh
ADD sshd_config /root/sshd_config

RUN /usr/bin/apt-get install -y openssh-server netcat-openbsd
RUN /usr/bin/mkdir -p /var/run/sshd

ADD run /etc/sv/sshd/run

EXPOSE 22

RUN ln -s /etc/sv/sshd /service/

