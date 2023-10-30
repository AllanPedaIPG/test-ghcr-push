#!/bin/bash

# quick wrapper to create image and if needed run idle container
# Allan Peda <allan.peda@interpublic.com>
# October 20, 2023

# build args were not consumed: [TARGETARCH TARGETOS TARGETPLATFORM]

declare -a platform=()
declare -r IMG='localhost/ghrc-alpine:latest'
if [[ $(podman machine list --format='{{.CPUs}}'| wc -l) -gt 0 ]]; then
    platform=('--platform' 'linux/amd64')
fi

if [[ "${1:-build}" == 'build' ]]; then
   podman build "${platform[@]}" --no-cache -t "$IMG" --format docker --file Dockerfile .
elif [[ "$1" == 'run' ]]; then
   podman run "${platform[@]}" -d --rm --entrypoint "sh" "$IMG" '-c' 'while :; do sleep 1; done'
fi
