# nginxをユーザー権限で実行するsingularity image

## imageのビルド
```
$ sudo singularity build centos7_nginx.simg Singularity
```

## nginxの設定
置いてあるnginxはDDBJ nginxをリバースプロキシとして使う設定になっている。適宜修正すること。

## instanceの起動
```
$ bash start_container.sh
```
