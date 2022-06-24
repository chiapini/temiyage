FactoryBot.define do
  factory :comment do
    scene_id { Faker::Number.between(from: 2, to: 7) }
    rate { Faker::Number.between(from: 1, to: 5) }
    comment { Faker::Lorem.characters(number: 150) }
    association :user
    association :tweet
  end
end
