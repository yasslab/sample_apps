class Relationship < ApplicationRecord
  # belongs_to :user => user_id == @user.id
  #              => follower_id == @user.id
  #              => followed_id == @user.id
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
