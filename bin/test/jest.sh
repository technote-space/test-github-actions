#!/usr/bin/env bash

set -e

echo ""
echo ">> Run composer jest"
composer jest

if [[ -n "${GITHUB_WORKSPACE}" ]]; then
  ls -la "${GITHUB_WORKSPACE}"/coverage/js/lcov.info
  echo ""
  echo ">> Run yarn coveralls."
  composer coveralls-js
fi
