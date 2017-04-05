#!/usr/bin/env sh
set -e

sed -i "s/http:\\/\\/us.archive.ubuntu.com\\/ubuntu\\//mirror:\\/\\/mirrors.ubuntu.com\\/mirrors.txt/g" /etc/apt/sources.list

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get upgrade -y
