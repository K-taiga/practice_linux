#!/bin/bash

var1='変数1'
echo $var1 #変数の中身が出る

var2=`cat test.sh` #バックスラッシュでコマンドの実行結果を変数に入れられる
echo $var2

echo $BASH 
echo $BASH_VERSION
echo $HOME #ホームディレクトリ
echo $PWD #カレントディレクトリ
