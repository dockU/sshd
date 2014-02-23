#!/bin/bash

/usr/bin/wget -O /root/.ssh/authorized_keys https://github.com/${GH_USERNAME}.keys
/usr/sbin/sshd -D -f /root/sshd_config

