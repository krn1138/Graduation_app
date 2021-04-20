# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(name: "karen", email: "kkk@example.com", encrypted_password: "123456", role: "host")
# user = User.create!(name: "karen", email: "kkk@example.com", encrypted_password: "123456", role: "host")
# Host.create!(name: "host1", phone_number: "08017798337", profile: "ホスト１です", country: "japan", birthday: "6月17日", user_id: user.id)
# host = Host.create!(name: "host1", phone_number: "08017798337", profile: "ホスト１です", country: "japan", birthday: "6月17日", user_id: user.id)

users = []
20.times { |n| users << User.create(name: "user_#{n}", email: "#{n}@test.com", password: "111111", role: 1) }

host_name = 0
hosts = []
users.each do |user|
  hosts << Host.create(name: "host_#{host_name += 1}", phone_number: "00000000000", profile: "#{host_name}です", country: "Japan", birthday: "6月17日", user_id: user.id)
end

Hostel.create!(name: 'あっとホームY&Y',address: 'Warren Street, Jackson Heights, NY 11372, United States', kind: rand(0..2), phone_number: '00000', price: '11111', capacity: 3, details: 'xxxxxx', country: 'アメリカ', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[0].id)
Hostel.create!(name: 'ロングラックゲストハウス',address: 'ซอย บ้านพานถม Ban Phan Thom, Phra Nakhon, Bangkok 10200', kind: rand(0..2), phone_number: '00000', price: '2992', capacity: 3, details: 'xxxxxx', country: 'タイ', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[1].id)
Hostel.create!(name: 'Boutique Dormitory 高知家',address: 'Artisan d’angkor Angkor Night St, Krong Siem Reap', kind: rand(0..2), phone_number: '855 90 609 060', price: '3333', capacity: 3, details: 'xxxxxx', country: 'カンボジア', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[2].id)
Hostel.create!(name: 'okmisay2 Guest House',address: 'Ban Hoxieng 03 / 46 Luangprabang Laos', kind: rand(0..2), phone_number: '856-20-5911-1028', price: '55555', capacity: 3, details: 'xxxxxx', country: 'ラオス', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[3].id)
Hostel.create!(name: 'クラブ寿',address: 'Via Monte Dell Abate 1, Castel San Pietro Romano, 00030 Italy', kind: rand(0..2), phone_number: '39 392 233 6418', price: '223', capacity: 3, details: 'xxxxxx', country: 'イタリア', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[4].id)
Hostel.create!(name: 'サンドラの家【アレキパ】',address: 'Av. Los Incas 205B Pachacutec Cerro Colorado Arequipa', kind: rand(0..2), phone_number: '00000', price: '11111', capacity: 3, details: 'xxxxxx', country: 'ペルー', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[5].id)
Hostel.create!(name: '汐見荘【ビーニャ・デル・マール】',address: 'Gral Baquedano 319, Viña del Mar, Valparaíso', kind: rand(0..2), phone_number: '00000', price: '2992', capacity: 3, details: 'xxxxxx', country: 'チリ', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[6].id)
Hostel.create!(name: '「EZstay Taipei Main Station」',address: 'Artisan d’angkor Angkor Night St, Krong Siem Reap', kind: rand(0..2), phone_number: '855 90 609 060', price: '3333', capacity: 3, details: 'xxxxxx', country: '台湾', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[7].id)
Hostel.create!(name: 'ブレイクポイントホテル',address: '110/10 Thaweewong Road, Patong Kathu Phuket 83150 Thailand', kind: rand(0..2), phone_number: '856-20-5911-1028', price: '2200', capacity: 3, details: '・全室エアコン・TV ・冷蔵庫・ホットシャワー・セーフティボックス・毎朝ドリンクウォーターのサービス・NHKワールドが見られます。', country: 'タイ', walk_city_time: 12, around_information: "プーケット ブレイクポイントホテルは格安料金のパトンビーチにあるゲストハウスです。パトンのビーチまで100ｍ。プーケットのナイトスポットの中心でもあるバングラー通りまでは250m。最高のロケーションとお手頃プライスです。タイ料理レストランとタイのみやげものや『サウスロード』もご利用ください。泊まって･食べて･飲んで･お買い物。お気軽にお越しください。日本人経営です。", host_id: hosts[8].id)
Hostel.create!(name: 'スハティ・ゲストハウス',address: 'Ｊｌ．Ｍｏｎｋｅｙ Ｆｏｒｅｓｔ Ｕｂｕｄ，ＢＡＬI－ＩＮＤＯＮＥＳＩＡ', kind: rand(0..2), phone_number: '39 392 233 6418', price: '223', capacity: 3, details: 'xxxxxx', country: 'インドネシア', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[9].id)
Hostel.create!(name: 'あっとホームY&Y',address: 'Warren Street, Jackson Heights, NY 11372, United States', kind: rand(0..2), phone_number: '00000', price: '11111', capacity: 3, details: 'xxxxxx', country: 'アメリカ', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[10].id)
Hostel.create!(name: 'ロングラックゲストハウス',address: 'ซอย บ้านพานถม Ban Phan Thom, Phra Nakhon, Bangkok 10200', kind: rand(0..2), phone_number: '00000', price: '2992', capacity: 3, details: 'xxxxxx', country: 'タイ', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[11].id)
Hostel.create!(name: 'Boutique Dormitory 高知家',address: 'Artisan d’angkor Angkor Night St, Krong Siem Reap', kind: rand(0..2), phone_number: '855 90 609 060', price: '3333', capacity: 3, details: 'xxxxxx', country: 'カンボジア', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[12].id)
Hostel.create!(name: 'okmisay2 Guest House',address: 'Ban Hoxieng 03 / 46 Luangprabang Laos', kind: rand(0..2), phone_number: '856-20-5911-1028', price: '55555', capacity: 3, details: 'xxxxxx', country: 'ラオス', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[13].id)
Hostel.create!(name: 'クラブ寿',address: 'Via Monte Dell Abate 1, Castel San Pietro Romano, 00030 Italy', kind: rand(0..2), phone_number: '39 392 233 6418', price: '223', capacity: 3, details: 'xxxxxx', country: 'イタリア', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[14].id)
Hostel.create!(name: 'サンドラの家【アレキパ】',address: 'Av. Los Incas 205B Pachacutec Cerro Colorado Arequipa', kind: rand(0..2), phone_number: '00000', price: '11111', capacity: 3, details: 'xxxxxx', country: 'ペルー', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[15].id)
Hostel.create!(name: '汐見荘【ビーニャ・デル・マール】',address: 'Gral Baquedano 319, Viña del Mar, Valparaíso', kind: rand(0..2), phone_number: '00000', price: '2992', capacity: 3, details: 'xxxxxx', country: 'チリ', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[16].id)
Hostel.create!(name: '「EZstay Taipei Main Station」',address: 'Artisan d’angkor Angkor Night St, Krong Siem Reap', kind: rand(0..2), phone_number: '855 90 609 060', price: '3333', capacity: 3, details: 'xxxxxx', country: '台湾', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[17].id)
Hostel.create!(name: 'ブレイクポイントホテル',address: '110/10 Thaweewong Road, Patong Kathu Phuket 83150 Thailand', kind: rand(0..2), phone_number: '856-20-5911-1028', price: '2200', capacity: 3, details: '・全室エアコン・TV ・冷蔵庫・ホットシャワー・セーフティボックス・毎朝ドリンクウォーターのサービス・NHKワールドが見られます。', country: 'タイ', walk_city_time: 12, around_information: "プーケット ブレイクポイントホテルは格安料金のパトンビーチにあるゲストハウスです。パトンのビーチまで100ｍ。プーケットのナイトスポットの中心でもあるバングラー通りまでは250m。最高のロケーションとお手頃プライスです。タイ料理レストランとタイのみやげものや『サウスロード』もご利用ください。泊まって･食べて･飲んで･お買い物。お気軽にお越しください。日本人経営です。", host_id: hosts[18].id)
Hostel.create!(name: 'スハティ・ゲストハウス',address: 'Ｊｌ．Ｍｏｎｋｅｙ Ｆｏｒｅｓｔ Ｕｂｕｄ，ＢＡＬI－ＩＮＤＯＮＥＳＩＡ', kind: rand(0..2), phone_number: '39 392 233 6418', price: '223', capacity: 3, details: 'xxxxxx', country: 'インドネシア', walk_city_time: 12, around_information: "アメリカの横です", host_id: hosts[19].id)