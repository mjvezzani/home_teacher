FactoryGirl.define do
  factory :family do
    surname { Faker::Name.last_name }
    
  end
end
