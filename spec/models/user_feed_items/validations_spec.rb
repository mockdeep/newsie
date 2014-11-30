RSpec.describe UserFeedItem, 'validations' do

  it { is_expected_to validate_presence_of(:user) }
  it { is_expected_to validate_presence_of(:feed_item) }

end
