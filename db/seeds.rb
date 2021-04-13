# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hostel.create!(name: 'あっとホームY&Y',address: 'Warren Street, Jackson Heights, NY 11372, United States', kind: rand(0..2), phone_number: '00000', price: '11111', details: 'xxxxxx', country: 'アメリカ')
Hostel.create!(name: 'ロングラックゲストハウス',address: 'ซอย บ้านพานถม Ban Phan Thom, Phra Nakhon, Bangkok 10200', kind: rand(0..2), phone_number: '00000', price: '2992', details: 'xxxxxx', country: 'タイ')
Hostel.create!(name: 'Boutique Dormitory 高知家',address: 'Artisan d’angkor Angkor Night St, Krong Siem Reap', kind: rand(0..2), phone_number: '855 90 609 060', price: '3333', details: 'xxxxxx', country: 'カンボジア')
Hostel.create!(name: 'okmisay2 Guest House',address: 'Ban Hoxieng 03 / 46 Luangprabang Laos', kind: rand(0..2), phone_number: '856-20-5911-1028', price: '55555', details: 'xxxxxx', country: 'ラオス')
Hostel.create!(name: 'クラブ寿',address: 'Via Monte Dell Abate 1, Castel San Pietro Romano, 00030 Italy', kind: rand(0..2), phone_number: '39 392 233 6418', price: '223', details: 'xxxxxx', country: 'イタリア')
