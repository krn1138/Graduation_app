FactoryBot.define do
  factory :user do
    name { 'user1' }
    email { 'user1@example.com' }
    password { "password1" }
    password_confirmation { "password1" }
  end

  factory :user_two, class: User do
    name { 'user2' }
    email { 'user2@example.com' }
    password { "password2" }
    password_confirmation { "password2" }
  end
end