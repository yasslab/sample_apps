# -*- coding: utf-8 -*-
module ApplicationHelper
  # ページごとの完全なタイトルを返します
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
