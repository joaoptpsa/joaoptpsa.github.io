#!/bin/bash
set -x
set -euo pipefail
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

pushd "$SCRIPT_DIR/.." || return

JEKYLL_ENV=production bundle exec jekyll build --source ./src --baseurl ""
