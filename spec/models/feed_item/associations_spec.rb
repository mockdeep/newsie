require 'rails_helper'

RSpec.describe FeedItem, 'associations' do

  it { is_expected.to belong_to(:feed) }
  it { is_expected.to have_many(:user_feed_items) }

end
