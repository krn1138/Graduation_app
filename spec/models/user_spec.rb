require 'rails_helper'
RSpec.describe 'Userモデル機能', type: :model do
  let(:user){ FactoryBot.create(:user) }

  describe 'バリデーションのテスト' do
    context 'バリデーションにひっかる条件' do
        # it 'Userの名前が空の場合' do
        #   user = User.new(name: '', email: 'user@example.com',
        #                   password: 'password1',
        #                   password_confirmation: 'password1')
        #   expect(user).not_to be_valid
        # end
        it 'Userのemailが空の場合' do
          user = User.new(name: 'user', email: '',
                          password: 'password1',
                          password_confirmation: 'password1')
          expect(user).not_to be_valid
        end
        it 'Userのpasswordが空の場合' do
          user = User.new(name: 'user', email: '',
                          password: '',
                          password_confirmation: '')
          expect(user).not_to be_valid
        end
      end
      context 'バリデーションが通る条件' do
        it '空の入力部分がない' do
          user = User.new(name: 'user', email: 'user@example.com',
                          password: 'password1',
                          password_confirmation: 'password1')
          expect(user).to be_valid
        end
      end
    end
end