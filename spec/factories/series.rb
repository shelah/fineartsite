require 'faker'
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :series do |f|
    f.name { Faker::Name.name }
    f.begin_date { Date.current }
  end
end
