require 'rails_helper'

RSpec.describe User, 'associations' do

  it { is_expected.to have_many(:feed_items).class_name('UserFeedItem') }
  it { is_expected.to have_many(:subscriptions) }
  it { is_expected.to have_many(:feeds).through(:subscriptions) }

end
