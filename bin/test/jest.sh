#!/usr/bin/env bash

set -e

echo ""
echo ">> Run composer jest"
composer jest

if [[ -n "${COVERALLS_REPO_TOKEN}" ]]; then
  ls -la "${GITHUB_WORKSPACE}"/coverage/js/clover.xml

  echo ""
  echo ">> Run yarn coveralls."
  bash "${GITHUB_WORKSPACE}"/bin/coverage/coveralls.sh "${GITHUB_WORKSPACE}"/coverage/js/clover.xml
fi
