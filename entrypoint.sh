#!/bin/sh

set -eu

export GITHUB="true"

output=$(sh -c "/bin/drone-ssh $*")
output="${output//'%'/'%25'}"
output="${output//$'\n'/'%0A'}"
output="${output//$'\r'/'%0D'}"

echo $output

echo "::set-output name=output::$output"
