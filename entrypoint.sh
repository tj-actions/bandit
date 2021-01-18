#!/usr/bin/env bash

set -e

pip3 install bandit=="${INPUT_BANDIT_VERSION}"

bandit "$INPUT_OPTIONS" "$INPUT_PATH"
