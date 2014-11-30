RSpec.describe UserFeedItems, 'associations' do

  it { is_expected_to belong_to(:user) }
  it { is_expected_to belong_to(:feed_item) }

end
