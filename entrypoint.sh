#!/usr/bin/env bash

set -e

PATH="${1:-.}"
OPTIONS="${2}"

bandit "$OPTIONS" "$PATH"
