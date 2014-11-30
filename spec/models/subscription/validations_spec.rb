RSpec.describe Subscription, 'validations' do

  it { is_expected_to validate_presence_of(:feed) }
  it { is_expected_to validate_presence_of(:user) }

  it { is_expected_to validate_uniqueness_of(:feed_id).scoped_to(:user_id) }

end
