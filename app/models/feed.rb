class Feed < ActiveRecord::Base
  has_many :feed_items
  has_many :subscriptions
  has_many :users, through: :subscriptions

  validates :name, :url, presence: true
  validates :url, uniqueness: true
end
