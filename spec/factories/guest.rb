FactoryBot.define do
    factory :user_guest do
      address { 'guest1' }
      phone_number { 'guest@example.com' }
      country { "日本" }
      birthday { "6月17日" }
    end

    factory :user_guest2 do
      address { 'guest2@example.com' }
      phone_number { 'guest1@example.com' }
      country { "日本" }
      birthday { "6月17日" }
    end
  end