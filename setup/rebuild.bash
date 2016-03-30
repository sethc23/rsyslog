#!/bin/bash

cd ../rsyslog


# Initial Libraries to install
# sudo add-apt-repository ppa:adiscon/v8-stable 
# sudo apt-get update
# libestr-dev liblognorm-dev


# Update
git pull

# Configure
autoreconf -fvi

./configure \
--enable-debug \
--enable-libgcrypt \
--enable-gnutls \
--enable-elasticsearch \
--enable-elasticsearch-tests \
--enable-pgsql \
--enable-mail \
--enable-imfile \
--enable-imptcp \
--enable-impstats \
--enable-mmnormalize \
--enable-mmjsonparse \
--enable-omprog \
--enable-omudpspoof \
--enable-omstdout \
--enable-omruleset \
--enable-omuxsock \
--enable-mmsnmptrapd \
--enable-omrabbitmq \
--enable-omhiredis > rsys_config

tail -n 150 rsys_config

make

sudo make install