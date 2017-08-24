#!/bin/sh -ex

export OS_CLOUD=jamielennox
IMAGE="centos-7-1702"
NAMES="cluster-1 cluster-2 cluster-3 cluster-4"

for name in $NAMES; do
    openstack server rebuild --image "$IMAGE" "$name"
done
