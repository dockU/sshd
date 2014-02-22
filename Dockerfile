FROM        debian
MAINTAINER  Jon Chen "docku@burrito.sh"

RUN         echo "deb http://mirrors.linode.com/debian stable main" > /etc/apt/sources.list
RUN         apt-get update

RUN         apt-get install -y openssh-server
RUN         mkdir -p /var/run/sshd
RUN         echo 'root:5DABgWS#!Rc$E4rtaz3d' |chpasswd

EXPOSE      22
CMD         /usr/sbin/sshd -D

