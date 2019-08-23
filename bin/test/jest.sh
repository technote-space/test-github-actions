#!/usr/bin/env bash

set -e

echo ""
echo ">> Run composer jest"
composer jest

if [[ -n "${COVERALLS_REPO_TOKEN}" ]]; then
  export COVERALLS_SERVICE_NAME="GitHub Action"
  ls -la "${GITHUB_WORKSPACE}"/coverage/js/lcov.info
  echo ""
  echo ">> Run yarn coveralls."
  composer coveralls-js
fi
