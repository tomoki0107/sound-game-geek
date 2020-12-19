FactoryBot.define do
  factory :article do
    title      {Faker::Team.name}
    info         {Faker::Lorem.sentence}
    category_id  {Faker::Number.between(from: 2, to: 10)}
    association :user

    after(:build) do |article|
      article.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
