#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
clang=$1

cd "$DIR"
rm -rf pcms
echo "NORMAL (with -H)"
$clang -H -Iinc -nostdinc++ test.cpp -c
echo "VIS MODULES"
$clang -Iinc -nostdinc++ -fmodules-cache-path=pcms -fmodules -Xclang -fmodules-local-submodule-visibility test.cpp -c
rm -rf pcms
echo "MODULES (this will fail)"
$clang -Iinc -nostdinc++ -fmodules-cache-path=pcms -fmodules -fcxx-modules test.cpp -c
rm -rf pcms
