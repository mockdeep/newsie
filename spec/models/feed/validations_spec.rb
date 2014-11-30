RSpec.describe Feed, 'validations' do

  it { is_expected_to validate_presence_of(:url) }
  it { is_expected_to validate_presence_of(:name) }

  it { is_expected_to validate_uniqueness_of(:url) }

end
