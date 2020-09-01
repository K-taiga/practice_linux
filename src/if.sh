#!/bin/bash

# 変数は=の間にスペースなし
var=$1
# if分は=にスペース必要
# if test $var = 'blue';
# 上と同じ
if [ $var = 'blue' ];
# if [[ $var = 'blue' ]];
then 
  echo '進め'
elif [ $var = 'red' ];
then 
  echo '止まれ'
else 
  echo '待て'
fi

var2=$2
# 数値の比較　equal
if [ $var2 -eq 10 ];
then 
  echo '10'
fi
# less than
if [ $var2 -lt 20 ];
then 
  echo '20以下'
# greater equal ,gt は　greater than
elif [ $var2 -ge 60 ];
then 
  echo '60以上'
else 
  echo '20以上60未満'
fi
