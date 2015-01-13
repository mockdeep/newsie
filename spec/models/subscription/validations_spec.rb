require 'rails_helper'

RSpec.describe Subscription, 'validations' do
  it { is_expected.to validate_presence_of(:feed) }
  it { is_expected.to validate_presence_of(:user) }

  it do
    create(:subscription)
    is_expected.to validate_uniqueness_of(:feed_id).scoped_to(:user_id)
  end
end
