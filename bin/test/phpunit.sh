#!/usr/bin/env bash

set -e

echo ""
echo ">> Run composer phpunit"
composer phpunit

if [[ -n "${CI}" ]]; then
  ls -la "${TRAVIS_BUILD_DIR}"/coverage/php/clover.xml
  echo ""
  echo ">> Run composer coveralls"
  composer coveralls-php
fi
