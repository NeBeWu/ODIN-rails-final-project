FactoryBot.define do
  factory :post do
    body { Faker::Books::Lovecraft.paragraph }
    creator { FactoryBot.create(:user) }

    factory :invalid_post do
      body { nil }
      creator { FactoryBot.build(:invalid_user) }
    end

    factory :post_my_text do
      body { 'MyText' }
      creator { nil }
    end
  end
end
