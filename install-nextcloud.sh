#!/usr/bin/env sh
cd
pkg install php php-fpm sqlite coreutils openssl-tool
termux-setup-storage
cd /storage/emulated/0/ && git clone https://github.com/nextcloud/server.git nextcloud
cd /storage/emulated/0/nextcloud/ && git submodule update --init
php -S 0.0.0.0:8080 -t /storage/emulated/0/nextcloud/