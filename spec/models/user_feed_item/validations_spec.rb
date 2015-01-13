require 'rails_helper'

RSpec.describe UserFeedItem, 'validations' do
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:feed_item) }
end
