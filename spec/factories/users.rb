FactoryBot.define do
    factory :user do
      name { 'MyString' }
      email { 'johndoe@example.com' }
      password { 'password' }
    end
  end