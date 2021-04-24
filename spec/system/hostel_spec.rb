require 'rails_helper'
describe 'タスク管理機能', type: :system do
  user = FactoryBot.create(:user)
  user_two = FactoryBot.create(:user_two)
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

  describe '宿検索機能' do
    context 'ransackで宿を検索した場合' do
      it '該当の宿が表示される' do
        login(user)
        binding.pry
        fill_in('q[name_or_country_cont_any]', with: "イタリア" + "\n")
        click_on 'クラブ寿'
        expect(page).to have_content 'Via Monte Dell Abate 1, Castel San Pietro Romano, 00030 Italy'
      end
    end

    context '予約をする場合' do
      it '宿詳細画面の予約するボタンを押してホストとDMをする' do
        login(user_two)
        expect(page).to have_content 'Signed in successfully.'
        fill_in 'q[name_or_country_cont_any]', with: 'イタリア'
        first("body").click
        click_on 'クラブ寿'
        click_on '予約する'
        visit message_rooms_path
        fill_in 'message[content]', with: '予約したい'
        click_on 'メッセージを送る'
        expect(page).to have_content 'oomiya_karen(自分)'
      end
    end

  end
end