#!/bin/sh

set -eu

export GITHUB="true"


echo `sh -c "/bin/drone-ssh $*"`

#cat "$LOGFILE"
#cat "$LOGFILE"
#cat "$LOGFILE"

output="${LOGFILE//'%'/'%25'}"
output="${LOGFILE//$'\n'/'%0A'}"
output="${LOGFILE//$'\r'/'%0D'}"

echo "::set-output name=output::$LOGFILE"
