#!/usr/bin/env bash
set -eo pipefail

cd $(dirname $0)
sudo mkarchiso -v "$@" .
sudo rm -rf work
