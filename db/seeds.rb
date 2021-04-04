# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hostel.create!(name: 'けんじ',address: 'kkk', kind: '1', phone_number: '00000', price: '11111', details: 'xxxxxx', country: '日本')
Hostel.create!(name: 'karen',address: 'kkk', kind: '2', phone_number: '00000', price: '2992', details: 'xxxxxx', country: 'amerika')
Hostel.create!(name: 'ayaka',address: '大阪', kind: '1', phone_number: '11111', price: '3333', details: 'xxxxxx', country: '日本')
Hostel.create!(name: 'なな',address: '東京', kind: '0', phone_number: '006600', price: '55555', details: 'xxxxxx', country: 'アジア')
Hostel.create!(name: 'ナナ',address: '福岡', kind: '2', phone_number: '003300', price: '223', details: 'xxxxxx', country: 'イタリア')

# hostel_amount = Hostel.count
# 10.times do |f|

#    Hostel.create!(
#      name: "ka#{f + 1}",
#      address: "wwwwwwwe#{f + 1}",
#      kind: 1, 
#      phone_number: "090000000#{f + 1}",
#      price: "3333333#{f + 1}",
#      details: "ああああああああ#{f + 1}",
#      country: "日本e#{f + 1}",
#      host_id: rand(1..hostel_amount)
#    )
# end