class Notification < ApplicationRecord
  belongs_to :to, class_name: "User"
  belongs_to :about, polymorphic: true
end