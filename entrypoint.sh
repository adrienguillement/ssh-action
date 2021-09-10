#!/bin/sh

set -eu

export GITHUB="true"

LOGFILE="hello.txt"

sh -c "/bin/drone-ssh $*" >> $LOGFILE

cat "$LOGFILE"

output="${LOGFILE//'%'/'%25'}"
output="${LOGFILE//$'\n'/'%0A'}"
output="${LOGFILE//$'\r'/'%0D'}"

echo "::set-output name=output::$LOGFILE"
