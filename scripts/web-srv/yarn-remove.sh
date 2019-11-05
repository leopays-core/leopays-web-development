#!/usr/bin/env bash
set -eo pipefail
. ./scripts/web-srv/.environment
cd $DESTDIR && yarn remove $@
