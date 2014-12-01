class User < ActiveRecord::Base
  has_secure_password

  has_many :subscriptions
  has_many :feeds, through: :subscriptions
  has_many :feed_items, class_name: 'UserFeedItem'

  validates :email, presence: true, uniqueness: true
end
