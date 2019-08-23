#!/usr/bin/env bash

set -e

if [[ $# -lt 1 ]]; then
  echo "usage: $0 <target>"
  exit 1
fi

if [[ ! -f "${1}" ]]; then
  echo "$1 is not file"
  exit 1
fi

if [[ -z "${COVERALLS_REPO_TOKEN}" ]]; then
  echo "<COVERALLS_REPO_TOKEN> is required"
fi

echo ""
echo ">> Install coveralls."
composer config repositories.technote-fork/php-coveralls vcs https://github.com/technote-fork/php-coveralls
composer require --dev technote-fork/php-coveralls:dev-master

echo ""
echo ">> Run coveralls."
php ${GITHUB_WORKSPACE}/vendor/bin/php-coveralls -v --coverage_clover "${1}"
