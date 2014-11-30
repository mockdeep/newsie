RSpec.describe Subscription, 'associations' do
  
  it { is_expected_to belong_to(:feed) }
  it { is_expected_to belong_to(:user) }

end
