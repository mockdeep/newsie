RSpec.describe User, 'associations' do

  it { is_expected_to have_many(:feed_items).class_name(:user_feed_items) }
  it { is_expected_to have_many(:subscriptions) }
  it { is_expected_to have_many(:feeds).through(:subscriptions) }

end
