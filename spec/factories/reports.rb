# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    association :source
    status "Open"
    weather "Fair"
  end
end