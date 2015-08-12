FactoryGirl.define do
  factory :member do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    email { Faker::Internet.email }
  end
end
