#!/bin/bash

cd $(dirname $0)

if [ -e ./.venv/ ]; then
  rm -r ./.venv/
fi

export PIPENV_VENV_IN_PROJECT=true

# https://github.com/pypa/pipenv/issues/4564#issuecomment-756625303
export SYSTEM_VERSION_COMPAT=1

pipenv sync --dev
