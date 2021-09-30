# tm
TM System

## ディレクトリ構成

- db

    データベース情報

- docker

    ローカル環境用コンテナファイル

- src

    ソースファイル

    →ここをいじる

## 開発環境構築
### 必要アプリ
- [pleiades](https://mergedoc.osdn.jp/){:target="_blank"}
    - バージョン: 2021-09
    - Edition: Java Full Edition

- [TortoiseGit](https://tortoisegit.org/){:target="_blank"}

- [Docker Desktop](https://www.docker.com/){:target="_blank"}

### 環境構築手順
#### 必要アプリインストール
#### ソースDL
1. 作業ディレクトリ作成

    ex. c:/@dev/

1. コマンドプロンプト起動

    1. Windows + r
    1. "cmd"
    1. Enter

1. ディレクトリ移動

    ```
    cd c:/@dev/
    ```

1. git clone

    ```
    git clone https://github.com/krazy-tech-lab/tm.git
    ```

1. ブランチ変更

    ```
    git checkout dev
    ```

#### コンテナ起動
1. コマンドプロンプト起動

    1. Windows + r
    1. "cmd"
    1. Enter

1. ディレクトリ移動

    ```
    cd c:/@dev/tm/docker/
    ```

1. コンテナ起動

    ```
    docker-compose up -d
    ```
1. 起動確認

    [pgAdmin](http://localhost:8081/){:target="_blank"}
