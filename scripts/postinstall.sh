#!/usr/bin/env bash
set -eo pipefail
. ./scripts/.environment
cd $DESTDIR/src/web-app && yarn install --silent 
cd $DESTDIR/src/web-srv && yarn install --silent
