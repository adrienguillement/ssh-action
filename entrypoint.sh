#!/bin/sh

set -eu

export GITHUB="true"

output=$(sh -c "/bin/drone-ssh $*" 2>&1)

echo "$output"

output="${output//'%'/'%25'}"
output="${output//$'\n'/'%0A'}"
output="${output//$'\r'/'%0D'}"

echo "::set-output name=output::$output"
