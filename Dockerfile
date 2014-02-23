FROM        debian
MAINTAINER  Jon Chen "docku@burrito.sh"

ADD         start.sh /root/start.sh
ADD         sshd_config /root/sshd_config
RUN         echo "deb http://mirrors.linode.com/debian stable main" > /etc/apt/sources.list
RUN         apt-get update

RUN         apt-get install -y openssh-server netcat-openbsd wget
RUN         mkdir -p /var/run/sshd

EXPOSE      22
CMD         /root/start.sh

