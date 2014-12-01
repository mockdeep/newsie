FactoryGirl.define do
  factory :feed_item do
    feed
    published_at Time.now
    title { Faker::Lorem.sentence }
    permalink { Faker::Internet.url }
  end
end
