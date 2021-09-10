#!/bin/sh

set -eu

export GITHUB="true"


LOGFILE=`echo "$(sh -c '/bin/drone-ssh $*')"`

echo "$LOGFILE"
echo "$LOGFILE"
echo "$LOGFILE"

#output="${LOGFILE//'%'/'%25'}"
#output="${LOGFILE//$'\n'/'%0A'}"
#output="${LOGFILE//$'\r'/'%0D'}"

echo "::set-output name=output::$LOGFILE"
