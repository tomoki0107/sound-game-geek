FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    profile {Faker::Lorem.sentence}
    after(:build) do |user|
      user.profile_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end