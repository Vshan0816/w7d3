FactoryBot.define do
  factory :user do
    username { Faker::Internet.unique.user_name }
    password { "password" }
  end
end
