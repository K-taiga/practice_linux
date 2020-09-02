#!/bin/bash

# if [ -e 'sample' ] #dir or fileチェック
# if [ -d 'sample' ] #dirチェック
# if [ -f 'sample' ] #fileチェック
if [ -f 'sample' ] #fileチェック
then 
  echo 'sampleが存在します'
  rm sample
fi

# if [ 'sample1' -nt 'sample2' ];
if [ 'sample1' -ot 'sample2' ];
then 
  echo 'sample1はsample2より古い'
else
  echo 'sample1はsample2より新しい'
fi
