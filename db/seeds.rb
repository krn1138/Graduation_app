# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hostel.create!(name: 'けんじ',address: 'kkk', kind: rand(0..2), phone_number: '00000', price: '11111', details: 'xxxxxx', country: '日本')
Hostel.create!(name: 'karen',address: 'kkk', kind: rand(0..2), phone_number: '00000', price: '2992', details: 'xxxxxx', country: 'amerika')
Hostel.create!(name: 'ayaka',address: '大阪', kind: rand(0..2), phone_number: '11111', price: '3333', details: 'xxxxxx', country: '日本')
Hostel.create!(name: 'なな',address: '東京', kind: rand(0..2), phone_number: '006600', price: '55555', details: 'xxxxxx', country: 'アジア')
Hostel.create!(name: 'ナナ',address: '福岡', kind: rand(0..2), phone_number: '003300', price: '223', details: 'xxxxxx', country: 'イタリア')
