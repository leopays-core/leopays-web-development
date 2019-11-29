#!/usr/bin/env bash
set -eo pipefail
. ./scripts/web-app/.environment
WADIR=./src/web-app
WSDIR=./src/web-srv
IFILE=${WSDIR}/react-app/index.html
OFILE=${WSDIR}/views/layout-for-react-app.hbs
#
sh ./scripts/web-app/yarn-release.sh && \
rm -f -R ${WSDIR}/react-app && \
cp -R ${WADIR}/build/react-app ${WSDIR}/react-app && \
node scripts/web-srv/make-hbs-layout.js \
  --input-file=${IFILE} \
  --output-file=${OFILE} && \
rm ${WSDIR}/react-app/index.html && exit 0
exit 1
