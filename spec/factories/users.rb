FactoryBot.define do
  factory :user do
    id { Faker::Internet.uuid }
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password(min_length: 6) }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end
