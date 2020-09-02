#!/bin/bash

# echo PID is $$ # $$=自身のPID
# sleep 100

function cleanup(){
  echo "割り込みが発生した"
  rm ./tmp_*.txt
  exit 1
}

function stop_15(){
  echo "killの15で終わった"
  exit 1
}

echo $$ > tmp_$$.txt

# trap "echo process end 0" 0 #正常終了
trap "cleanup" 0 2 #正常終了と割り込み時に関数呼び出し
trap "cleanup" 2 #割り込み時に関数呼び出し
trap "stop_15" 15
for i in `seq 1 100`;
do
  echo $i
  sleep 1
done
