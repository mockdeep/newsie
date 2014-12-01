FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "test-user-#{n}@newsie.io" }
    password 'blahblah'
  end
end
