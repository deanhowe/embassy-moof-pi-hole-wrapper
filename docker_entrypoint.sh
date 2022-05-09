#!/bin/sh

set -ea

export HOST_IP=$(ip -4 route list match 0/0 | awk '{print $3}')
export WHO_AM_I=$(whoami)

# A cheeky touch of moof-pi-hole.log to help keep the container running…
touch /var/log/moof-pi-hole.log

exec tail -f /var/log/moof-pi-hole.log