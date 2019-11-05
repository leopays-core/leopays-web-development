#!/usr/bin/env bash
set -eo pipefail
. ./scripts/web-app/.environment
cd $DESTDIR && yarn run build
