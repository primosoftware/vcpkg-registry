#!/usr/bin/env bash

# get script dir
script_dir=$( cd `dirname ${BASH_SOURCE[0]}` >/dev/null 2>&1 ; pwd -P )

export VCPKG_DISABLE_METRICS=1
export VCPKG_ROOT="$HOME/vcpkg"
alias vcpkg="$VCPKG_ROOT/vcpkg"
