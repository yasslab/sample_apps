# Codespaces ♥️ Railsチュートリアル

本リポジトリは[Railsチュートリアル](https://railstutorial.jp/)第8版に対応した [GitHub Codespaces](https://github.co.jp/features/codespaces) 用テンプレートです。2022年11月に公開された[GitHub公式のRailsテンプレート](https://github.com/github/codespaces-rails)を、[Railsチュートリアル](https://railstutorial.jp)用にカスタマイズしたものです。

- [:computer: GitHub Codespaces 対応！環境構築が不要に（解説動画付き） - note](https://note.com/yasslab/n/n427c56266295)
- [:newspaper: GitHub Codespaces が全ユーザーに無料提供へ、毎月60時間分 - Publickey](https://www.publickey1.jp/blog/22/github_codespaces60jetbrainsjupyterlabide.html)

<br>

本テンプレートは、Railsチュートリアルの第1章・第2章・第3章の冒頭にある `rails new` および `Gemfile` の更新まで（難しいとされる「環境構築」まで）が完了している状態となっており、**rails server が立ち上げられる状態から学習をスタートできます** 📝✨

![Codespaces のサンプル画面](https://railstutorial.jp/images/codespaces-railstutorial/cs-preview.png)

<!-- ![旧：Codespaces のサンプル画面](https://i.gyazo.com/af23bec87ce2b3d79613e16883700ecf.png) -->

<br>

## 必要なもの

- [Chrome](https://www.google.com/intl/ja/chrome/browser/) などのブラウザ（Chrome だとより快適に動作します）
- [GitHub](https://github.co.jp/) のアカウント（もしまだであれば事前に作成しておきましょう）
  [![GitHub Top](https://railstutorial.jp/images/codespaces-railstutorial/cs-github-top.png)](https://github.co.jp/)

<br>

## Codespaces 使い方

以下の手順で、Codespaces を利用した環境構築が行えます 🛠

1. 当ページの上部にある `Use this template` から `Create a new repository` をクリックします。もし `Use this template` が表示されない場合は、ブラウザの横幅を広げてみましょう。
   ![本リポジトリからリポジトリを作成する場面](https://railstutorial.jp/images/codespaces-railstutorial/cs-create-repo.png)

1. 移動したページで、`Repository name` に作成するアプリ名、`Description` にアプリの説明文を入力し、`Private` を選択してリポジトリを非公開に設定します。最後に `Create repository from template` をクリックすると、新しいリポジトリが作成されます。（以下は第1章の `hello_app` を作成する場合の例です)
   ![テンプレートリポジトリの作成画面](https://railstutorial.jp/images/codespaces-railstutorial/cs-repo-settings.png)

1. 作成したリポジトリに飛んだら、`Code` から `Codespaces` タブに移動し、`Create codespace on main` をクリックします。
   ![テンプレートリポジトリから Codespaces へ](https://railstutorial.jp/images/codespaces-railstutorial/cs-start.png)

1. 環境構築が完了するのを待ちます（１〜２分ほど掛かります）
   ![Codespaces の立ち上げ中の画面](https://railstutorial.jp/images/codespaces-railstutorial/cs-building.png)

1. Railsチュートリアルのロゴ画像が表示されたら完成です!
   ![Codespaces による環境構築の完了画面Top](https://railstutorial.jp/images/codespaces-railstutorial/cs-preview.png)

`rails new` や `Gemfile` の更新、`rails server` を立ち上がるところまで（難しいとされる「環境構築」が終わるところまで）が完了している状態なので、**第1章・第2章・第3章のコードを書くところから始められます!** 📝✨

例えば第1章の場合は「[1.3.2 `rails server`](https://railstutorial.jp/chapters/beginning#sec-rails_server)」の途中から、すなわち `rails server` を立ち上げたところからスタートできます。

> :memo: Codespaces によってココまで自動化されていますが、**1.3.2 以前の内容（何が自動化されたのか）を知ることも大事**です。このまま 1.3.2 以降に進めていただいてももちろん大丈夫ですが、どこかの段階で 1.3.2 以前の内容にも目を通しておくと、知識は広がります。

<br>

## インストール済みの拡張機能について
より良い学習体験に繋げるため、本テンプレートには以下の VS Code 拡張機能がデフォルトで入っています。

- [:octocat: Shopify/ruby-lsp](https://github.com/Shopify/ruby-lsp):
  - Ruby コードを色分けして表示するハイライト機能や、コード補完機能などが使えます。 \
    [公式ドキュメント](https://shopify.github.io/ruby-lsp/#general-features)ではデモ動画もご覧いただけます。
  - 参考記事: [Ruby LSPのコードナビゲーションで強化された主な機能 - TechRacho](https://techracho.bpsinc.jp/hachi8833/2024_07_29/143652)

- [:octocat: castwide/vscode-solargraph](https://github.com/castwide/vscode-solargraph):
  - Ruby コードの定義元が調べられるコードジャンプ機能や、ドキュメント表示機能などが使えます。\
    公式ページではデモ動画もご覧いただけます。

RuboCop によるコード整形、Ruby 公式デバッガーなどの拡張機能はお好みで追加してください。本テンプレートでは必要最低限の拡張機能に留めています。

- [:octocat: misogi/vscode-ruby-rubocop](https://github.com/misogi/vscode-ruby-rubocop)
- [:octocat: ruby/vscode-rdbg](https://github.com/ruby/vscode-rdbg)
- [:octocat: ruby-debug/ruby-debug-ide](https://github.com/ruby-debug/ruby-debug-ide)
- [:octocat: Shopify/vscode-shopify-ruby](https://github.com/Shopify/vscode-shopify-ruby)
- [:octocat: primer/github-vscode-theme](https://github.com/primer/github-vscode-theme)

<br>

## よくあるエラーと解決方法
<details>
  <summary><strong>ブラウザ別のエラー解決方法を見る（2023年3月時点）</strong></summary>
  <h3>Google Chrome - Webビューの読み込みエラー</h3>
  <img src='https://railstutorial.jp/images/codespaces-railstutorial/cs-chrome-error.png' alt='Chrome のエラー例１' />
  <p><code>Error: Could not register service workers: NotSupportedError ...</code> などが表示され、「シンプルブラウザーは開いたけど何も表示されない」という場合があります。これは必要な Cookie が許可されていない場合に起こります。以下の例を参考に、サードパーティの Cookie を許可すると解決する場合が多いです。</p>
  <img src='https://railstutorial.jp/images/codespaces-railstutorial/cs-chrome-cookies.png' alt='Chrome のエラー例２' />
  <p>Cookie を許可しても解決しない場合は、シンプルブラウザーの右端にある「ブラウザーで開く」アイコンをクリックしてください。ブラウザの別タブで画面が表示され、こちらの画面でも現在の状態をご確認いただけます。</p>
  <img src='https://railstutorial.jp/images/codespaces-railstutorial/cs-chrome-open-browser.png' alt='Chrome のエラー例３' />
  <br><br><br>

  <h3>Firefox - Webビューの読み込みエラー</h3>
  <p>上記の Chrome と同様に、シンプルブラウザーの画面が表示されない事があります。アドレスバーにある強化型トラッキング防止機能のアイコンをクリックし、「オフ」にすることでプレビューが表示されるようになります。</p>
  <img src='https://railstutorial.jp/images/codespaces-railstutorial/cs-firefox-tracking.png' alt='Firefox のエラー例１' />
  <p>上記の機能をオフにしても解決しない場合は、シンプルブラウザーではなく「新規ウィンドウでサイトを開く」をクリックしてください。ブラウザの別タブで画面が表示され、こちらの画面でも現在の状態をご確認いただけます。</p>
  <img src='https://railstutorial.jp/images/codespaces-railstutorial/cs-firefox-new-window.png' alt='Firefox のエラー例２' />
  <img src='https://railstutorial.jp/images/codespaces-railstutorial/cs-firefox-preview.png' alt='Firefox のエラー例３' />
  <br><br><br>

  <h3>Safari - 入力の遅延・アイコンの一部非表示</h3>
  <p>Safari では問題なくことが多いです。ただし、文字入力をしてから、Codespaces 上の画面に表示されるまでが遅い場合があります。また一部のアイコンが表示されない現象も確認できています。開発する上で問題になるわけではないですが、もし気になる場合は Google Chrome など他のブラウザをお試しください。</p>
  <img src='https://railstutorial.jp/images/codespaces-railstutorial/cs-safari-icons.png' alt='Safari のエラー例１' />
</details>

<br><br>

## 制作・ライセンス

Copyright &copy; [YassLab](http://yasslab.jp/) Inc.<br>
Railsチュートリアル運営チーム<br>
[https://railstutorial.jp/](https://railstutorial.jp/)

<small>
  ソースコードのライセンスは <a href='https://github.com/yasslab/codespaces-railstutorial/blob/main/LICENSE'>LICENSE</a> をご確認ください。<br>
  ロゴ画像やデモ動画などは各制作者の著作物となります。
</small>
