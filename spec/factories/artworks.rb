require 'faker'
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artwork do |f|
    association :series

    f.title {Faker::Name}
    f.image {File.new(Rails.root + 'spec/support/images/rails.png')}
    f.thumbnail {File.new(Rails.root + 'spec/support/images/rails.png')}
  end

  trait :with_home_image do
    home_image true
  end
end
