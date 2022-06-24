FactoryBot.define do
  factory :tweet do
    shop_name { Faker::Restaurant.name }
    item_name { Faker::Dessert.variety }
    category_id { Faker::Number.between(from: 2, to: 9) }
    information { Faker::Lorem.characters(number: 100) }
    area { Faker::Address.street_name }
    capacity { Faker::Number.between(from: 1, to: 10) }
    expiry { Faker::Number.between(from: 1, to: 10) }
    keep { Faker::Name.name }
    allergy { Faker::Food.ingredient }
    quantity { Faker::Number.between(from: 1, to: 10) }
    event_id { '1' }
    price { Faker::Number.between(from: 300, to: 9_999_999) }
    url { Faker::Internet.url }
    association :user

    after(:build) do |tweet|
      tweet.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
