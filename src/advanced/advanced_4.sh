#!/bin/bash 

echo 'Hello World'

arg=$1

echo arg = $arg

# 一部だけデバッグ
set -x
echo AAAA
set +x
echo BBBB
echo CCCC
