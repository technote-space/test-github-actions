#!/usr/bin/env bash

set -e

if type yarn >/dev/null 2>&1; then
  yarn install
  yarn build
else
  echo "yarn command required."
  echo -e 'Run\e[32;1m npm install -g yarn\e[m to install.'
  exit
fi

composer install --no-interaction --prefer-dist --no-suggest
