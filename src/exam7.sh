#!/bin/bash

if [ $# -ne 1 ];
then
  echo 'argument is wrong'
  exit 1
fi

function stop_exam7(){
  rm exam7.lock
  exit 0
}

if [ $1 = 'start' ];
then
  # lockファイルの有無でプロセス中か確認する
  if [ -f 'exam7.lock' ];
  then
    echo "Process is already running"
    exit 0
  else
    # exam7にプロセスIDを書き込む
    echo $$ > exam7.lock
    # 割り込み=2,もしくはKillの場合=15lockファイル削除
    trap "stop_exam7" 2 15 
    for i in `seq 1 1000`;
    do
      echo $i >> output_$$.txt
      sleep 1
    done
    rm exam7.lock
    exit 0
  fi
elif [ $1 = 'stop' ];
then 
  if [ -f 'exam7.lock' ];
  then 
    PID=-1
    while read p;
    do 
      PID=$p
    # while read p で読み取るのはdoneのファイル
    done < 'exam7.lock'
    kill -15 $PID
  else 
    echo 'process is not running'
    exit 0
  fi

elif [ $1 = 'status' ];
then
  if [ -f 'exam7.lock' ]
  then 
    PID=-1
    while read p;
    do
      PID=$p
    done < 'exam7.lock'
    echo Process is runnng pid=$PID
  else
    echo Process is not running
  fi
else
  echo 'wrong argument'
  exit 1
fi
