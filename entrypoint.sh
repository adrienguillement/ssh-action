#!/bin/sh

set -eu

export GITHUB="true"


LOGFILE=`echo "$(sh -c '/bin/drone-ssh $*')"`

echo "$LOGFILE"
echo "$LOGFILE"
echo "$LOGFILE"

LOGFILE="${LOGFILE//'%'/'%25'}"
LOGFILE="${LOGFILE//$'\n'/'%0A'}"
LOGFILE="${LOGFILE//$'\r'/'%0D'}"

echo "::set-output name=output::$LOGFILE"
