#!/bin/bash

# pにファイルから読み込んだ値を入れて表示している
cat 'sample.txt' | while read p;
do
  echo $p
  sleep 0.5
done < 'sample.txt'

exit 0
n=0

until (( $n > 5 ));
do
  echo $n
  sleep 1
  n=$(( n + 1 ))
done

while (( $n < 10 ));
do
  echo $n
  sleep 1
  if [ $n -eq 5 ];
  then 
    # break
    continue
  fi
  n=$(( n + 1 ))
done
exit 0

read -p '文字列を入力してください:' var

while [ $var != 'exit' ];
do
  echo '入力した値は' $var 
  echo 'exitで終了します'
  read -p '文字列を入力してください:' var
done

