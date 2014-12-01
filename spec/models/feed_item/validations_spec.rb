require 'rails_helper'

RSpec.describe FeedItem, 'validations' do

  it { is_expected.to validate_presence_of(:feed) }
  it { is_expected.to validate_presence_of(:permalink) }
  it { is_expected.to validate_presence_of(:published_at) }
  it { is_expected.to validate_presence_of(:title) }

  it do
    create(:feed_item)
    is_expected.to validate_uniqueness_of(:permalink)
  end

end
