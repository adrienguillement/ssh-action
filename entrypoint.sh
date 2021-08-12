#!/bin/sh

set -eu

export GITHUB="true"

output=$(sh -c "/bin/drone-ssh $*")

echo "::set-output name=output::$output"
