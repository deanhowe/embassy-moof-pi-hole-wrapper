#!/bin/sh

export HOST_IP=$(ip -4 route list match 0/0 | awk '{print $3}')
export WHO_AM_I=$(whoami)


export VIRTUAL_HOST=$(yq e ".lan-address" /datadir/start9/config.yaml)
export PROXY_LOCATION=$(yq e ".lan-address" /datadir/start9/config.yaml)
export WEBPASSWORD=$(yq e ".password" /datadir/start9/config.yaml)
export TZ="Europe/London"

exec /s6-init