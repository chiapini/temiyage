FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.free_email }
    password { '1a' + Faker::Internet.password(min_length: 6, mix_case: true) }
    password_confirmation { password }
    gender { Faker::Number.between(from: 1, to: 3) }
    situation { Faker::Number.between(from: 1, to: 2) }
    children { Faker::Number.between(from: 1, to: 2) }
    area_id { Faker::Number.between(from: 2, to: 48) }
    job_id { Faker::Number.between(from: 2, to: 13) }
    age_id { Faker::Number.between(from: 2, to: 7) }
    think_id { Faker::Number.between(from: 2, to: 9) }
  end
end
