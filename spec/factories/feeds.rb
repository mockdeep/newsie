FactoryGirl.define do
  factory :feed do
    name { Faker::Lorem.sentence }
    url { Faker::Internet.url }
  end
end
