# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    source "MyString"
    open false
    weather "MyString"
  end
end
