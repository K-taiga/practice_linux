#!/bin/bash

select var in apple banana lemon exit
do
  if [ -z $var ]; #空白の場合の処理
  then
    continue
  fi
  echo $var
  if [ $var = 'exit' ]
  then
    break
  fi
done
echo 'select done'
