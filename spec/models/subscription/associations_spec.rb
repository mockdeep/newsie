require 'rails_helper'

RSpec.describe Subscription, 'associations' do
  it { is_expected.to belong_to(:feed) }
  it { is_expected.to belong_to(:user) }
end
