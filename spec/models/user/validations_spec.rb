RSpec.describe User, 'validations' do

  it { is_expected_to validate_presence_of(:email) }
  it { is_expected_to validate_presence_of(:password_digest) }

  it { is_expected_to validate_uniqueness_of(:email) }

end
