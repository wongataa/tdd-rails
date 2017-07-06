FactoryGirl.define do
  factory :idea do
    title { Faker::Lorem.words(4) }
    title { Faker::Hacker.say_something_smart }
  end
end
