#!/usr/bin/env sh

set -x

healthcheck_server() {
  curl --fail http://0.0.0.0:80/health_check \
    || exit 1
}

healthcheck_server
