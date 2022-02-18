#!/bin/sh

exec xmrig --user=${POOL_USER} --url=${POOL_URL} --algo=${ALGO} --pass=${POOL_PASS} --threads=${THREADS} --cpu-priority=${PRIORITY} --donate-level=$DONATE_LEVEL
