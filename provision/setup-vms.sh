#!/bin/bash

function set_hosts() {
cat <<EOF > ~/hosts
127.0.0.1   localhost
::1         localhost

192.16.35.10 k8s-n1
192.16.35.11 k8s-n2
192.16.35.12 k8s-m1

EOF
}

function set_resolv() {
cat <<EOF > ~/resolv.conf
nameserver 178.22.122.100
nameserver 185.51.200.2
EOF
}

set_hosts
set_resolv
sudo mv ~/hosts /etc/
sudo mv ~/resolv.conf /etc/
