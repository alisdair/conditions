# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :source do
    name "Mark Greenkeeper"
    key { SecureRandom.hex }
  end
end
