class Notification < ApplicationRecord
  belongs_to :user

  enum event: [:first_login, :followed_by], _prefix: true
  scope :not_read_notification, ->(event) { where(event: event, read: false) }
end
