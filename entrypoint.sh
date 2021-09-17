#!/bin/sh

set -eu

export GITHUB="true"

echo "With *:"
for arg in "$*"; do echo "<$arg>"; done
echo
echo "With @:"
for arg in "$@"; do echo "<$arg>"; done

LOGFILE=`echo "$(sh -c '/bin/drone-ssh $*')"`

echo "$LOGFILE"

LOGFILE="${LOGFILE//'%'/'%25'}"
LOGFILE="${LOGFILE//$'\n'/'%0A'}"
LOGFILE="${LOGFILE//$'\r'/'%0D'}"

echo "::set-output name=output::$LOGFILE"
