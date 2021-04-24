require 'rails_helper'
RSpec.describe 'hostelモデル機能', type: :model do
  let(:hostel){ FactoryBot.create(:hostel) }

  describe 'バリデーションのテスト' do
    context 'バリデーションにひっかる条件' do
      it 'hostelの名前が空の場合' do
        hostel = Hostel.new(name: '', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのaddressが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: '', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのkindが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: '', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのwalk_city_timeが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: '',
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのpriceが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: '', phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのphone_numberが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのdetailsが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: '', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのcountryが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: '', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it 'Userのcapacityが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: '')
        expect(hostel).not_to be_valid
      end
    end
    context 'バリデーションが通る条件' do
      it '空の入力部分がない' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
    end
  end
end

