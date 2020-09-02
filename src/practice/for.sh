#!/bin/bash

for command in ls pwd date;
do
  echo $command
  $command
done

# for var in 1 2 4 5;
for var in `seq 1 2 10`;
do
  echo $var
  if [ $var -eq 3 ];
  then
    # break
    continue
  fi
  sleep 0.5
done
