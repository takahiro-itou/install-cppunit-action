# Install CppUnit - GitHub Actions

This action provides the following functions.

- Download and Install cppunit to specified directory.
- Cache the contents of installed directory.

このアクションは以下の機能を提供する。

- CppUnit をダウンロードして指定したディレクトリにインストールする
- インストールディレクトリの内容をキャッシュする

##  Usage (利用法)

Sample repository :
サンプルリポジトリ :

https://github.com/takahiro-itou/install-cppunit-action-test


```
- uses: actions/install-cppunit-action@v1.0.2
  with :
    # Install Directory.
    # インストール先ディレクトリ

    # Default : ${{ github.workspace }}/tools/cppunit
    install-prefix : "${{ github.workspace }}/tools/cppunit"

    # Version of CppUnit
    # インストールする CppUnit のバージョン
    # Default : 1.15.1
    version : '1.15.'

    # SHA256 Hash of source tar.gz file
    # ソースファイルの SHA256 ハッシュ値

    # Default : the sha256 hash of version 1.15.1
    # In the current version, this value is not used.
    # 現在のバージョンでは、この値は使われない。
    sha256 : 89c5c6665337f56fd2db36bc3805a5619709d51fb136e51937072f63fcc717a7
```
