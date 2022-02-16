class Notification < ApplicationRecord
  belongs_to :to_user, class_name: "User"
  belongs_to :from_user, class_name: "User", optional: true

  scope :uncheck, -> { where(checked: false) }

  enum action: { first_login: 1, follow: 2 }

  def notify_message
    case action
    when "first_login"
      "初回ログインありがとうございます。"
    when "follow"
      "#{from_user.name}さんにフォローされました"
    end
  end
end