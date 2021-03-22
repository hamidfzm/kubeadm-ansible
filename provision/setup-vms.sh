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

set_hosts
sudo mv ~/hosts /etc/
