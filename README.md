# npm-ejs


## packages

* [package.json](package.json)


## 開発環境

### node version

* [.node-version](.node-version)
* 10.15.1


### インストール

```sh
$ git clone ［本リポジトリ .git パス］
$ cd ［clone したディレクトリのローカルルート］
$ yarn
```


## タスク

### ローカル開発

```sh
$ yarn dev
```

* 以下のタスクを実行
	* clean
	* build
	* browser-sync
	* watch
* browser-sync によりブラウザを自動起動
* <http://localhost:8001/> でローカル確認
* chokidar src/〜 の更新監視により保存時自動リロード

