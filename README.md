## Linuxコンテナに入る
```docker run --rm -it centos:centos7 /bin/bash```

## コマンド
### touch -d '2020/08/25'

日付を指定してファイルを作成する

### mkdir -p dir2/dir3/dir4

ディレクトリを複数作成する

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
