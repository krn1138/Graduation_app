require 'rails_helper'
RSpec.describe '宿登録モデル機能', type: :model do
  let(:hostel){ FactoryBot.create(:hostel) }

  describe 'バリデーションのテスト' do
    context 'バリデーションにひっかる条件' do
      it '宿登録の名前が空の場合' do
        hostel = Hostel.new(name: '', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のaddressが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: '', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のkindが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: '', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のwalk_city_timeが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: '',
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のpriceが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: '', phone_number: '08017958335', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のphone_numberが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '', details: 'aaa', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のdetailsが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: '', country: 'japan', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のcountryが空の場合' do
        hostel = Hostel.new(name: 'ホテル１', address: 'user@example.com', kind: 'dormitory', walk_city_time: 2,
                            price: 2000, phone_number: '08017958335', details: 'aaa', country: '', capacity: 2)
        expect(hostel).not_to be_valid
      end
      it '宿登録のcapacityが空の場合' do
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

