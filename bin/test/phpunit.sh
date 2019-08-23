#!/usr/bin/env bash

set -e

echo ""
echo ">> Run composer phpunit"
composer phpunit

if [[ -n "${COVERALLS_REPO_TOKEN}" ]]; then
  ls -la "${GITHUB_WORKSPACE}"/coverage/php/clover.xml

  echo ""
  echo ">> Run composer coveralls"
  bash "${GITHUB_WORKSPACE}"/bin/coverage/coveralls.sh "${GITHUB_WORKSPACE}"/coverage/php/clover.xml
fi
