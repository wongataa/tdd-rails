FactoryGirl.define do
  factory :idea do
    title { Faker::Lorem.words(4) }
    description { Faker::Hacker.say_something_smart }
  end
end
