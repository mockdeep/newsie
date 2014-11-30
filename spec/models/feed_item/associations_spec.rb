RSpec.describe FeedItem, 'associations' do

  it { is_expected_to belong_to(:feed) }
  it { is_expected_to have_many(:user_feed_items) }

end
