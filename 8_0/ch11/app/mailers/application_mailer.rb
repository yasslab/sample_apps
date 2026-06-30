class ApplicationMailer < ActionMailer::Base
  default from: "Mailgunに登録したメールアドレス"
  layout "mailer"
end
