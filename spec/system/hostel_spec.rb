require 'rails_helper'
describe 'タスク管理機能', type: :system do
  user = FactoryBot.create(:user)
  # user_host = FactoryBot.create(:user_host, user_id: user.id)
  # user_two = FactoryBot.create(:user_two)
  host = FactoryBot.create(:user_host)
  hostel = FactoryBot.create(:hostel, host_id: host.id)

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
  # def login(user_host)
  #   visit new_user_session_path
  #   fill_in 'user[email]', with: user_host.email
  #   fill_in 'user[password]', with: user_host.password
  #   click_button 'Log in'
  #   puts 'user logged in.'
  # end

  describe '宿検索機能,宿登録機能' do
    context 'ransackで宿を検索した場合' do
      it '該当の宿が表示される' do
        login(user)
        # binding.pry
        fill_in('q[name_or_country_cont_any]', with: "タイ" + "\n")
        click_on 'hostel1'
        expect(page).to have_content 'お店たくさんあります'
      end
    end

    context '予約をする場合' do
      it '宿詳細画面の予約するボタンを押してホストとDMをする' do
        login(user)
        expect(page).to have_content 'Signed in successfully.'
        fill_in('q[name_or_country_cont_any]', with: "タイ" + "\n")
        click_on 'クラブ寿'
        click_on '予約する'
        visit message_rooms_path
        fill_in 'message[content]', with: '予約したい'
        click_on 'メッセージを送る'
        expect(page).to have_content 'oomiya_karen(自分)'
      end
    end

    context 'hostが宿を登録した場合' do
      it '１件のみ宿を登録ができる' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'host_jennie'
        fill_in 'user[email]', with: 'host_jennie@example.com'
        fill_in 'user[password]', with: 'kkk1138'
        fill_in 'user[password_confirmation]', with: 'kkk1138'
        select 'host', from: 'user[role]'
        click_button 'Sign up'
        click_on 'hostel registration'
        fill_in 'hostel[name]', with: 'ホテル１'
        fill_in 'hostel[address]', with: '福岡県博多区冷泉町９−１１'
        select 'twin', from: 'user[kind]'
        fill_in 'hostel[walk_time_city]', with: 1
        fill_in 'hostel[price]', with: '2000'
        fill_in 'hostel[country]', with: 'japan'
        fill_in 'hostel[capacity]', with: 2
        fill_in 'hostel[phone_number]', with: '08017958335'
        fill_in 'hostel[hostel_around_information]', with: 'なんでもある'
        fill_in 'hostel[hostel_details]', with: 'なんでもある'
        click_button 'Create Hostel'
        click_button '登録する'
        expect(page).to have_content '宿名:　いいいい'
      end
    end
  end

end