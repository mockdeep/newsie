class UserFeedItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :feed_item

  validates :feed_item, :user, presence: true
end
