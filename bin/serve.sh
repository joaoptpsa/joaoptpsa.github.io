#!/bin/bash
set -x
set -euo pipefail
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

pushd "$SCRIPT_DIR/.." || return
bundle exec jekyll serve --source src --drafts --unpublished --livereload
