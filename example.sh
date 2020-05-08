#!/bin/bash
SHARED_DIR="$(pwd)/shared"
if [ ! -d "${SHARED_DIR}" ]
then
    mkdir "${SHARED_DIR}"
fi
cp "$1" "${SHARED_DIR}"
podman run --rm -itv "${SHARED_DIR}":/mnt/host-dir:z beroset/opendss "/mnt/host-dir/$1"
