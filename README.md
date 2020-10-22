# container base amazonlinux

## ベースイメージの作成

ベースイメージをamazonlinuxにして、ローカルにキャッシュさせたり、composeで起動したりのサンプル  

1. `docker login` でログイン
1. `./build-image.sh` を実行すると、キャッシュディレクトリの作成と、イメージ作成、キャッシュが走る  
1. あとはベースを利用したコンテナで好きに作業する
