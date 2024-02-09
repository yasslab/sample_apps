module ApplicationHelper

  # ページごとの完全なタイトルを返します。                      # コメント行
  def full_title(page_title = '')                     # メソッド定義とオプション引数
    base_title = "Ruby on Rails Tutorial Sample App"  # 変数への代入
    if page_title.empty?                              # 論理値テスト
      base_title                                      # 暗黙の戻り値
    else
      "#{page_title} | #{base_title}"                 # 文字列の結合
    end
  end
end
