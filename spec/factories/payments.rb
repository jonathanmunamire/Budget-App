FactoryBot.define do
  factory :payment do
    name { 'MyString' }
    amount { 10 }
    user { nil }
  end
end
