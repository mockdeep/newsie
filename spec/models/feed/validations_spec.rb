require 'rails_helper'

RSpec.describe Feed, 'validations' do

  it { is_expected.to validate_presence_of(:url) }
  it { is_expected.to validate_presence_of(:name) }

  it do
    create(:feed)
    is_expected.to validate_uniqueness_of(:url)
  end

end
