# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    source "Mark"
    open true
    weather "Fair"
  end
end
