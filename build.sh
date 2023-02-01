#!/usr/bin/env bash
set -eo pipefail

conf_dir=$(dirname $0)
sudo mkarchiso -v "$@" $conf_dir
sudo rm -rf work
