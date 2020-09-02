#!/bin/bash

# and
if [ $1 -gt 20 ] && [ $1 -le 60 ];
# if [ $1 -gt 20 -a $1 -le 60 ];
# if [[ $1 -gt 20 && $1 -le 60 ]];
# if test $1 -gt 20 && test $1 -le 60;
then 
  echo '20以上、60未満'
fi

# or
if [ $2 -lt 10 ] || [ $2 -gt 60 ];
# if [ $2 -lt 10 -o $2 -gt 60 ];
# if [[ $2 -lt 10 || $2 -gt 60 ]];
# if test $2 -lt 10 || test $2 -gt 60;
then 
  echo '10以下か60以上'
fi

if ! test $3 = 'apple';
# if [ ! $3 = 'apple' ];
# if [[ ! $3 = 'apple']] ;
then 
  echo 'not apple'
fi

#&& ||
echo 'A' && echo 'B' #前の処理が正しく実行されればB
ech 'C' || echo 'D' #前の処理がエラーの場合のみ、次の処理が実行される
echo 'left' && echo 'middle' || echo 'right'
