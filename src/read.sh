#!/bin/bash

# read var #ターミナルから値受け取る
# echo var = $var

# read var1 var2 var3 #値を3つ受け取る
# echo var1 = $var1 var2 = $var2 var3 = $var3

# read -p '変数を入力してください:var = ' var
# echo var = $var

# # 画面に表示されないシークレットモード
# read -sp 'password:' password
# echo password = $password

# 配列として受け取る
# read -a names
# echo name = ${names[@]}

read -p '値を入力してください:' var
# 出力結果をsample.txtに上書きで書き込み、なければ新規作成
echo var = $var > sample.txt

# 追記する　ファイルがなければできない
echo var = $var >> sample.txt
