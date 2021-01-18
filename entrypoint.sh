#!/usr/bin/env bash

set -e

VERSION="${1}"
PATH="${2}"
OPTIONS="${3}"


pip3 install bandit=="${VERSION}"

bandit "$OPTIONS" "$PATH"
