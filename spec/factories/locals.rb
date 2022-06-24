FactoryBot.define do
  factory :local do
    category_id { Faker::Number.between(from: 2, to: 9) }
    area_id { Faker::Number.between(from: 2, to: 48) }
    prefecture_id { Faker::Number.between(from: 2, to: 11) }
    shop_name { Faker::Restaurant.name }
    information { Faker::Lorem.characters(number: 300) }
    association :user

    after(:build) do |local|
      local.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
