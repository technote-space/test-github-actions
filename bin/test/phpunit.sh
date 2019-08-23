#!/usr/bin/env bash

set -e

echo ""
echo ">> Run composer phpunit"
composer phpunit

if [[ -n "${COVERALLS_REPO_TOKEN}" ]]; then
  export CI_NAME="GitHub Action"
  export CI_JOB_ID=${GITHUB_SHA}
  ls -la "${GITHUB_WORKSPACE}"/coverage/php/clover.xml
  echo ""
  echo ">> Run composer coveralls"
  composer coveralls-php
fi
