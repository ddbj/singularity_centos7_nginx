# nginxをユーザー権限で実行するsingularity image

## imageのビルド
```
$ sudo singularity build centos7_nginx.simg Singularity
```

## nginxの設定
nginx.confを適宜修正

## instanceの起動
```
$ bash start_container.sh
```