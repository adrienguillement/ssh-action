#!/bin/sh

set -eu

export GITHUB="true"

echo -e "\nUsing \"\$@\":"

for command in $@; do
  LOGFILE=`echo "$(sh -c '/bin/drone-ssh $command')"`
done

echo "$LOGFILE"

LOGFILE="${LOGFILE//'%'/'%25'}"
LOGFILE="${LOGFILE//$'\n'/'%0A'}"
LOGFILE="${LOGFILE//$'\r'/'%0D'}"

echo "::set-output name=output::$LOGFILE"
