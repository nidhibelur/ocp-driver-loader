#!/bin/bash
set -eu

if [[ "$(uname -r)" != ${KERNEL_VERSION}  ]]
then
echo "oot driver container was compiled for kernel version ${KERNEL_VERSION} but the running version is $(uname -r)"
exit 1
fi

# Unload will return the in-tree driver
rmmod rte_kni

echo "oot dpdk kni driver unloaded"

