#!/bin/bash

fruits=('banana' 'apple' 'grape') #配列
fruits[3]='lemon' #配列の追加
unset fruits[2] #配列の削除
echo ${fruits[@]} #配列の中身全て表示
echo ${fruits[0]}
echo ${!fruits[@]} #indexを表示
echo ${#fruits[@]} #配列の要素数を表示
