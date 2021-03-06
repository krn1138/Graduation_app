require 'rails_helper'
describe 'user機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @user_two = FactoryBot.create(:user_two)
    @host = FactoryBot.create(:user_host, user_id: @user.id)
    @hostel = FactoryBot.create(:hostel, host_id: @host.id)
  end

  def login(user)
    visit new_user_session_path
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Log in'
    puts 'user logged in.'
  end

  def login(user_two)
    visit new_user_session_path
    fill_in 'user[email]', with: user_two.email
    fill_in 'user[password]', with: user_two.password
    click_button 'Log in'
    puts 'user logged in.'
  end

  describe 'ユーザー登録' do
    context 'guestが新規登録した場合' do
      it '作成したguestが表示される' do
        visit new_user_registration_path
        # binding.pry
        fill_in 'user[name]', with: 'jennie'
        fill_in 'user[email]', with: 'jennie@example.com'
        fill_in 'user[password]', with: 'kkk1138'
        fill_in 'user[password_confirmation]', with: 'kkk1138'
        select 'guest', from: 'user[role]'
        click_button 'Sign up'
        fill_in 'user[guest_attributes][address]', with: '福岡'
        fill_in 'user[guest_attributes][country]', with: '日本'
        fill_in 'user[guest_attributes][phone_number]', with: '0000'
        click_button 'Update'
        expect(page).to have_content 'jennieさんのプロフィール'
      end
    end

    context 'hostが新規登録した場合' do
      it '作成したhostが表示される' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'host_jennie'
        fill_in 'user[email]', with: 'host_jennie@example.com'
        fill_in 'user[password]', with: 'kkk1138'
        fill_in 'user[password_confirmation]', with: 'kkk1138'
        select 'host', from: 'user[role]'
        click_button 'Sign up'
        fill_in 'user[host_attributes][name]', with: '大宮かれん'
        fill_in 'user[host_attributes][country]', with: '日本'
        click_button 'Update'
        expect(page).to have_content 'host_jennieさんのプロフィール'
      end
    end

    context 'ユーザがログインせずtoppageに飛ぼうとした場合' do
      it 'ログイン画面に遷移すること' do
        visit new_user_session_path
        expect(page).to have_current_path new_user_session_path
      end
    end
  end

  describe 'セッション機能のテスト' do
    context 'ユーザーがログイン,ログアウトした場合' do
      it 'guestが正常にログインできる' do
        login(@user)
      end
    end

    it 'guestが正常にログアウトできる' do
      login(@user)
      click_on 'Log out'
    end

    it 'hostが正常にログインできる' do
      login(@user_two)
    end

    it 'hostが正常にログアウトできる' do
      login(@user_two)
      click_on 'Log out'
    end

    context 'ユーザが他人の詳細画面に飛ぶ場合' do
      it 'toppageに遷移すること' do
        login(@user)
        click_on 'Account'
        visit user_path(@user_two.id)
        expect(page).to have_content 'あなたのページはここです'
      end
    end
  end
end

