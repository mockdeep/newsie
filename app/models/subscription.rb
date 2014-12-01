class Subscription < ActiveRecord::Base
  belongs_to :feed
  belongs_to :user

  validates :feed, :user, presence: true
  validates :feed_id, uniqueness: { scope: :user_id }
end
