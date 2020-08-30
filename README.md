## Linuxコンテナに入る
```docker run --rm -it centos:centos7 /bin/bash```

## コマンド
### touch -d '2020/08/25'

日付を指定してファイルを作成する

### mkdir -p dir2/dir3/dir4

ディレクトリを複数作成する

### cd $_

ひとつ前に実行したコマンドラインの最後の引数を参照する<br>
mkdirしたあとに打つことで、そこにいける

### pwd

カレントディレクトリの表示

### ls

```
オプション

-a 隠しファイルを表示
-A カレント、親ディレクトリも表示
-l 詳細情報も表示(権限など)
-1 縦方向に表示
-lt timestampで降順に表示
-ltr timestampで昇順に表示
```

### less ファイル名

ファイルを1画面で表示

- d:半画面進む
- u:半画面戻る
- g:先頭行に移動
- G:末尾に移動
- v:編集する
- q:終了する
- /:下のものを検索する
- ?:上のものを検索する

### less -N ファイル名 

行番号を表示してファイルの中身を表示する

### rm

- rm -i #消すか聞く
- rm -r #ディレクトリを再帰的に削除
- rm -rf #ディレクトリを再帰的に強制削除
- rmdir #空ディレクトリ削除

### mv

- mv file dir #dirに移動
- mv file1 file2 #file1の名前をfile2に変更する
- mv -f #強制
- mv -i #上書きをするか聞く これをしないで移動させると同じファイルがあると上書きされる
- mv -b #上書きして移動する際にバックアップを作成する

### cp 

- cp -r #ディレクトリのコピー
- cp -b #上書きコピーする際にバックアップ作成
- cp -p #ファイルのパーミッション、所有者情報、タイムスタンプを保持してコピー

### 
