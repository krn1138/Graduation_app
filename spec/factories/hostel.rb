FactoryBot.define do
    factory :hostel do
      name { 'hostel1' }
      address { 'fukuoka' }
      kind { 'twin' }
      walk_city_time { 10 }
      price { 000 }
      phone_number { '08017958335' }
      details { '安いです' }
      country { '日本' }
      capacity { 2 }
      around_information { 'お店たくさんあります' }
    end

    factory :hostel2, class: Hostel do
      address { 'guest2@example.com' }
      phone_number { 'guest1@example.com' }
      country { "日本" }
      birthday { "6月17日" }
    end
  end