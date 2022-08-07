FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 10) }

    factory :invalid_user, aliases: [:invalid_creator] do
      email { '12345678' }
      password { Faker::Internet.password(max_length: 8) }
    end
  end
end
