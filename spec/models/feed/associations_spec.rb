require 'rails_helper'

RSpec.describe Feed, 'associations' do
  it { is_expected.to have_many(:feed_items) }
  it { is_expected.to have_many(:subscriptions) }
  it { is_expected.to have_many(:users).through(:subscriptions) }
end
