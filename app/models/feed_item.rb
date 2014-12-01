class FeedItem < ActiveRecord::Base
  belongs_to :feed

  has_many :user_feed_items

  validates :feed, :permalink, :published_at, :title, presence: true
  validates :permalink, uniqueness: true
end
