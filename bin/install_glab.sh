#!/usr/bin/env bash
set -euo pipefail

export GLAB_VERSION=1.102.0


curl -L https://gitlab.com/gitlab-org/cli/-/releases/v${GLAB_VERSION}/downloads/glab_${GLAB_VERSION}_linux_amd64.deb -o /tmp/glab.deb
dpkg -i /tmp/glab.deb
rm -f /tmp/glab.deb

glab version

