class Notification < ApplicationRecord
  belongs_to :user

  enum event: [:first_login, :followed_by], _prefix: true
end
