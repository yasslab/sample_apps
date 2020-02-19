[![Cover Photo](https://i.gyazo.com/ce5845fbb7950b5a95b61aa1b02e26b5.png)](http://railstutorial.jp/)

# Rails チュートリアル sample_app コード集

[Railsチュートリアル](https://railstutorial.jp/)の各章が終わった状態を集めたリポジトリです。   

Sample App の開発途中でエラーの原因がどうしても分からないときや、   
[Railsチュートリアル解説動画](https://railstutorial.jp/#screencast)を途中から視聴するときなどにご活用ください。
（[お試し視聴](https://railstutorial.jp/trial)も可能です。）

<a href="https://railstutorial.jp/trial"><img src="https://i.gyazo.com/aa8aab4e0428dee5ae91d236dcba5e8b.png" width="400px"></a>

なお、各章の演習の結果や、高度なセットアップなどについては反映されておりません。

## 各章とディレクトリ名の対応関係

対応しているRailsのバージョン毎にディレクトリを分けております。具体的な対応関係は次のとおりです。

- Rails 5.1 対応: [5_1_2](https://github.com/yasslab/sample_apps/tree/master/5_1_2)
- Rails 5.0 対応: [5_0_0_1](https://github.com/yasslab/sample_apps/tree/master/5_0_0_1)
- Rails 4.2 対応: [4_2_2](https://github.com/yasslab/sample_apps/tree/master/4_2_2)
- Rails 4.0 対応: [4_0_5](https://github.com/yasslab/sample_apps/tree/master/4_0_5)

上記の各ディレクトリの中に **各章が終わった状態の** `sample_app` を置いています。   
例えば `5_1_2` ディレクトリの場合は、次のようになります。

- `ch01`: 第1章が終わった状態
- `ch02`: 第2章が終わった状態
- `ch03`: 第3章が終わった状態
- `ch04`: 第4章が終わった状態
- `ch05`: 第5章が終わった状態
- `ch06`: 第6章が終わった状態
- `ch07`: 第7章が終わった状態
- `ch08`: 第8章が終わった状態
- `ch09`: 第9章が終わった状態
- `ch10`: 第10章が終わった状態
- `ch11`: 第11章が終わった状態
- `ch12`: 第12章が終わった状態
- `ch13`: 第13章が終わった状態
- `ch14`: 第14章が終わった状態


## 各バージョンと動作確認環境

Railsのバージョン毎の動作確認した環境が異なっております。各バージョン毎の動作確認環境は次のとおりです。

- [5_1_2](https://github.com/yasslab/sample_apps/tree/master/5_1_2): Cloud9 + Ruby 2.4.0
- [5_0_0_1](https://github.com/yasslab/sample_apps/tree/master/5_0_0_1): Cloud9 + Ruby 2.3.0
- [4_2_2](https://github.com/yasslab/sample_apps/tree/master/4_2_2): Cloud9 + Ruby 2.2.2
- [4_0_5](https://github.com/yasslab/sample_apps/tree/master/4_0_5): macOS (Yosemite) + Ruby 2.0.0


## オマケ

`omake` ディレクトリの中に、試しにアップグレードしてみたコードを置いています。

- [12章](http://railstutorial.jp/chapters/supplement?version=3.2#top)が始められる状態: `ch12_3_2` (Rails3.2版)
- [12章](http://railstutorial.jp/chapters/supplement?version=3.2#top)が終わった状態: `ch12_4_0` (Rails4.0版)
- 完成した Sample App を Rails 4.1 で動くようにしてみた: `sample_app_4_1`
- 完成した Sample App を Rails 4.2 で動くようにしてみた: `sample_app_4_2`

なお、Railsチュートリアルを進められる環境をVagrantで構築する[スターターキット](https://github.com/yasslab/railstutorial.jp_starter_kit)もあります。    
Cloud9ではなく、手元の環境で構築したい場合はこちらも適宜ご活用して頂けたらと思います。

### 参考資料

- スライド資料: [Rails解説セミナー: リリースノート解説編](http://www.slideshare.net/yasulab/rails-50634204)
- スライド資料: [Rails解説セミナー: Railsのアップグレード編](http://www.slideshare.net/yasulab/rails-rails)
- Railsガイド: [Rails アップグレードガイド](http://railsguides.jp/upgrading_ruby_on_rails.html)
- Railsガイド: [Ruby on Rails 4.2 リリースノート](http://railsguides.jp/4_2_release_notes.html)
- Railsガイド: [Ruby on Rails 4.1 リリースノート](http://railsguides.jp/4_1_release_notes.html)
- Railsガイド: [Ruby on Rails 4.0 リリースノート](http://railsguides.jp/4_0_release_notes.html)

他、開発環境の設定例などは、Railsチュートリアルの[ヘルプページ](http://railstutorial.jp/help)を参照してください。


## 関連リンク/関連レポジトリ

- 📕 [Railsチュートリアル](https://railstutorial.jp)
- 📕 [Railsチュートリアル電子書籍](https://railstutorial.jp/#ebook)
- 📹 [Railsチュートリアル解説動画](https://railstutorial.jp/#screencast)
- 📙 [Railsガイド](https://railsguides.jp)
- 📙 [Railsガイド電子書籍](https://railsguides.jp/options.html)
- :octocat: [Railsガイド (GitHub リポジトリ)](https://github.com/yasslab/railsguides.jp)

# 本リポジトリのライセンス

The [MIT License](https://ja.wikipedia.org/wiki/MIT_License)

Copyright &copy; 2015-2018 [YassLab 株式会社](https://yasslab.jp)

[![YassLab Logo](https://yasslab.jp/img/logo_800x200.png)](https://yasslab.jp)

# Sample App のライセンス

Ruby on Rails Tutorial: Learn Web Development with Rails. Copyright © 2014 by Michael Hartl.

All source code in the Ruby on Rails Tutorial is available jointly under the MIT License and the Beerware License.

Copyright &copy; 2014-2017 Michael Hartl

