#!/usr/bin/env bash
set -euo pipefail

CONFTEST_VERTION=0.68.2

curl -sLo ./conftest.tar.gz https://github.com/open-policy-agent/conftest/releases/download/v${CONFTEST_VERTION}/conftest_${CONFTEST_VERTION}_Linux_x86_64.tar.gz
tar xzf conftest.tar.gz
mv conftest /usr/local/bin/conftest

conftest --version

rm -f conftest.tar.gz