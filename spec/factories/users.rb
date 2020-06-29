FactoryBot.define do
    factory :user do
        name { 'random' }
        username { 'random08' }
        email { 'random@gmail.com' }
        password { 'random1234' }
        password_confirmation { 'random1234' }
    end
  end