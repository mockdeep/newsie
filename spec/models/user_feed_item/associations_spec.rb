require 'rails_helper'

RSpec.describe UserFeedItem, 'associations' do

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:feed_item) }

end
