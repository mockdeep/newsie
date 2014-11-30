RSpec.describe Feed, 'associations' do

  it { is_expected_to have_many(:feed_items) }
  it { is_expected_to have_many(:subscriptions) }
  it { is_expected_to have_many(:users).through(:subscriptions) }

end
