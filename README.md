## 参照
https://qiita.com/jhorikawa_err/items/fb9c03c0982c29c5b6d5

requirements.txt
https://zuma-lab.com/posts/docker-python-settings


コンテナへの接続
```
$ docker compose exec python3 bash
```

コンテナの削除
```
$ docker compose down
```
コンテナの再起動
```
$ docker compose up -d
```
コンテナのいらないイメージの削除
```
$ docker image rm imageid
```
jupiter notebookの起動
```
$ docker run -v $PWD/opt:/root/opt -w /root/opt -it --rm -p 7777:8888 ml_python-python3 jupyter-lab --ip 0.0.0.0 --allow-root -b localhost
```

