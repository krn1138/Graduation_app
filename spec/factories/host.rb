FactoryBot.define do
  factory :user_host do
    name { '大宮かれん' }
    address { 'host1' }
    phone_number { 'host@example.com' }
    country { "日本" }
    profile { "ああああ" }
    birthday { "6月17日" }
  end
end
