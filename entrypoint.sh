#!/usr/bin/env bash

set -e

# shellcheck disable=SC2086
bandit ${INPUT_OPTIONS} ${INPUT_TARGETS}
