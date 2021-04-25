FactoryBot.define do
  factory :user_host, class: Host do
    name { '大宮かれん' }
    address { '東京' }
    phone_number { '0000000' }
    country { "日本" }
    profile { "ああああ" }
    birthday { "6月17日" }
  end
end
