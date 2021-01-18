#!/usr/bin/env bash

set -e

PATH="${2:-.}"
OPTIONS="${3}"
VERSION="${4:-1.7.0}"

pip3 install bandit=="${VERSION}"

bandit "$OPTIONS" "$PATH"
