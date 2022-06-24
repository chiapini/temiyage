FactoryBot.define do
  factory :contact do
    name { Faker::Name.name }
    opinion_id { Faker::Number.between(from: 2, to: 7) }
    contact_text { Faker::Lorem.characters(number: 300) }
    association :user

    after(:build) do |contact|
      contact.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
