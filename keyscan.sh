#!/bin/bash -ex

OS_CLOUD=jamielennox
NAMES="cluster-1.sl.jamielennox.net cluster-2.sl.jamielennox.net cluster-3.sl.jamielennox.net cluster-4.sl.jamielennox.net"

for name in $NAMES; do
    ssh-keygen -R "$name"
    ssh-keygen -R `dig +short "$name"`
done

ssh-keyscan -t rsa $NAMES >> ~/.ssh/known_hosts
