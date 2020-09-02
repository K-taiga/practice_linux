#!/bin/bash

echo 1 + 1 #文字列で出る
echo $(( 1 + 1 ))

echo $(( 6 % 4 ))
echo --------------------
echo $(expr 1 + 1 )
echo $(expr 5 ¥* 9 )

num1=10
num2=20

echo $(( num1 + num2 ))
echo $(expr $num1 + $num2 )
