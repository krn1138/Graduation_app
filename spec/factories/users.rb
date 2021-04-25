FactoryBot.define do
  factory :user do
    name { 'user1' }
    email { 'user1@example.com' }
    password { "password1" }
    password_confirmation { "password1" }
    role { 1 }
  end

  factory :user_two, class: User do
    name { 'user2' }
    email { 'user2@example.com' }
    password { "password2" }
    password_confirmation { "password2" }
    role { 0 }
  end

  factory :user_three, class: User do
    name { 'user3' }
    email { 'user3@example.com' }
    password { "password3" }
    password_confirmation { "password3" }
    role { 1 }
  end

  factory :user_four, class: User do
    name { 'user4' }
    email { 'user4@example.com' }
    password { "password4" }
    password_confirmation { "password4" }
    role { 0 }
  end
end