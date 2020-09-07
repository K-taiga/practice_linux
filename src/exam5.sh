#!/bin/bash

function calculate_sum(){
  sum=0
  # ファイルの中を読み取ってpに格納
  while read p;
  do
    sum=$(( sum + p ))
  done < $1
  echo SUM: $sum
  exit 0
}

function calculate_avg(){
  sum=0
  count=0
  while read p;
  do
    sum=$(( sum + p ))
    count=$(( count + 1 ))
  done < $1
  echo AVG: $(( sum/count ))
  exit 0
}

function calculate_min(){
# 1から100しかファイルに入ってないため
  min=101
  # 101より小さいものがあるかチェックする
  while read p;
  do
    if [ $min -gt $p ]
    then 
      min=$p
    fi
  done < $1
  echo MIN: $min
  exit 0
}
function calculate_max(){
  max=o
  while read p;
  do
    if [ $max -lt $p ]
    then 
      max=$p
    fi
  done < $1
  echo MAX: $max
  exit 0
}
read -p 'ファイル名を入力してください:' fh

if [ -f $fh ];
then 
  read -p 'sum, avg, min, max, exit:' command 
  if [ $command = 'sum' ];
  then
    calculate_sum $fh
  elif [ $command = 'avg' ];
  then
    calculate_sum $fh
  elif [ $command = 'min' ];
  then
    calculate_min $fh
  elif [ $command = 'max' ];
  then
    calculate_max $fh
  elif [ $command = 'exit' ];
  then
    exit 0
  else
      echo 'コマンドが存在しません'
      exit 1
  fi
else
  echo 'ファイルが存在しません'
  exit 1
fi
