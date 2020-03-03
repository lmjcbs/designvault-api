FactoryBot.define do
  factory :post do
    content { Faker::Lorem.sentence }
    user_id { Faker::Internet.uuid }
  end
end
