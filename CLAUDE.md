# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## リポジトリ概要

[Railsチュートリアル](https://railstutorial.jp/)の各章が終わった状態を集めたリポジトリ。Sample App開発中のエラー解決や、[解説動画](https://railstutorial.jp/screencast)視聴時の参考資料として活用されることを目的としています。最終的にTwitterライクなマイクロブログアプリケーション「Sample App」が完成します。

### バージョン対応
- Rails 7.0対応（第7版）- GitHub Codespaces推奨
- Rails 6.1/6.0対応（第6版）- AWS Cloud9推奨
- Rails 5.1/5.0対応（第4版）
- Rails 4.2対応（第3版）
- Rails 4.0対応（第2版）

**注意**: 演習結果やプロ品質のデプロイは含まれていません。

## よく使うコマンド

### セットアップ手順（GitHub Codespaces使用時）
```bash
# 1. リポジトリをフォークしてクローン
git clone https://github.com/<あなたのアカウント名>/sample_apps.git
cd 7_0/ch11

# 2. Gitの初期化とコミット
git init
git add .
git commit -m "第11章動作確認"

# 3. GitHubでリポジトリ作成後、リモート設定
git remote add origin https://github.com/<あなたのアカウント名>/sample_ch11.git
git push -u origin main

# 4. Codespacesで環境構築後
rails db:migrate
rails test
rails db:seed
```

### ローカル環境での実行
```bash
# 特定のバージョン/章に移動
cd 7_0/ch14

# 依存関係のインストール（本番環境用gemをスキップ）
bundle install --without production

# データベースセットアップ
rails db:migrate
rails db:seed

# サーバー起動
rails server
```

### テスト実行
```bash
# 全テスト実行
rails test

# 特定のテストファイル実行
rails test test/models/user_test.rb

# 特定のテスト実行
rails test test/models/user_test.rb -n test_should_be_valid

# Guard自動テスト（利用可能な場合）
bundle exec guard
```

### データベース操作
```bash
# データベースリセット
rails db:reset

# マイグレーション実行
rails db:migrate

# マイグレーションロールバック
rails db:rollback
```

## アーキテクチャ概要

### アプリケーション構造（Rails 7.0版）

**主要モデル:**
- `User`: ユーザー認証、プロフィール、フォロー関係
- `Micropost`: ユーザー投稿（画像添付可能）
- `Relationship`: ユーザー間のフォロー/フォロワー関係

**主要コントローラ:**
- `UsersController`: ユーザー登録、プロフィール、フォロー一覧
- `SessionsController`: ログイン/ログアウト
- `MicropostsController`: 投稿の作成・削除
- `StaticPagesController`: 静的ページ（Home、Help、About、Contact）
- `AccountActivationsController`: メールによるアカウント有効化
- `PasswordResetsController`: パスワードリセット

**章ごとの機能進化:**
- 第3-5章: 静的ページ、基本テスト、Bootstrapスタイル
- 第6-7章: Userモデル、セキュアパスワード、ユーザー登録
- 第8-9章: ログイン/ログアウト、Remember me機能
- 第10章: ユーザー更新、管理者機能、ページネーション
- 第11章: メールによるアカウント有効化
- 第12章: パスワードリセット機能
- 第13章: 画像アップロード付きマイクロポスト
- 第14章: フォロー/フォロワー関係、ステータスフィード

### 技術スタック
- **フレームワーク**: Rails（バージョンはディレクトリごとに異なる）
- **データベース**: SQLite3（開発/テスト）、PostgreSQL（本番）
- **フロントエンド**: Bootstrap-sass、Turbo/Stimulus（Rails 7.0）
- **テスト**: MinitestとGuard
- **認証**: bcryptによるパスワードハッシュ化
- **ファイルストレージ**: Active StorageとAWS S3（本番環境）

### 重要な設定
- デフォルトテストユーザー: `example@railstutorial.org` / `foobar`
- 各章は前章の内容を基に段階的に構築
- 第13章以降の本番デプロイにはAmazon S3のセットアップが必要
- Rails 7.0ではWebpackerの代わりにImport mapsを使用
- 動作環境: GitHub Codespaces（第7版）またはAWS Cloud9（第6版以前）推奨

### 開発上の注意点
- 専用のリントツールは含まれていません（Rails 7.0のSolargraphを除く）
- 標準的なRailsの規約に従っています
- 実装が完了したと判断する前にテストが通ることを確認
- デバッグやデータ確認にはRailsコンソール（`rails console`）を使用