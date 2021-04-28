require 'rails_helper'
describe 'hostel機能', type: :system do
  # before do
  user_three = FactoryBot.create(:user_three)
  # user_host = FactoryBot.create(:user_host, user_id: user.id)
  # end
  user_four = FactoryBot.create(:user_four)
  host_two = FactoryBot.create(:user_host, user_id: user_three.id)
  # hostel = FactoryBot.create(:hostel, host_id: host_two.id)


  def login(user_three)
    visit new_user_session_path
    fill_in 'user[email]', with: user_three.email
    fill_in 'user[password]', with: user_three.password
    # binding.pry
    click_button 'Log in'
    puts 'user logged in.'
  end

  # def login(user_four)
  #   visit new_user_session_path
  #   fill_in 'user[email]', with: user_four.email
  #   fill_in 'user[password]', with: user_four.password
  #   click_button 'Log in'
  #   puts 'user logged in.'
  # end
  # def login(user_host)
  #   visit new_user_session_path
  #   fill_in 'user[email]', with: user_host.email
  #   fill_in 'user[password]', with: user_host.password
  #   click_button 'Log in'
  #   puts 'user logged in.'
  # end
  describe '宿検索機能,宿登録機能' do
    context 'hostが宿を登録した場合' do
      it '１件のみ宿を登録ができる' do
        login(user_three)
        # binding.pry
        click_on 'hostel registration'
        attach_file "hostel_images", "#{Rails.root}/spec/files/BackPacker.jpg"
        fill_in 'hostel[name]', with: 'ホテル１'
        fill_in 'hostel[address]', with: '福岡県博多区冷泉町９−１１'
        select 'twin', from: 'hostel[kind]'
        fill_in 'hostel_walk_city_time', with: '1'
        fill_in 'hostel[price]', with: '2000'
        fill_in 'hostel[country]', with: 'japan'
        fill_in 'hostel[capacity]', with: '2'
        fill_in 'hostel[phone_number]', with: '08017958335'
        fill_in 'hostel_around_information', with: 'なんでもある'
        fill_in 'hostel_details', with: 'なんでもある'
        # binding.pry
        # click_button 'Create Hostel'
        click_button '登録する'
        click_button '登録する'
        sleep 3
        expect(page).to have_content '編集する'
        expect(page).to have_content '削除する'
      end
    end

    # context '宿登録した場合' do
    #   it 'account画面から登録した宿を確認できる' do
    #     login(user_three)
    #     binding.pry
    #     click_on 'Account'

    #   end
    # end


    context 'ransackで宿を検索した場合' do
      it '該当の宿が表示される' do
        hostel = FactoryBot.create(:hostel, host_id: host_two.id)
        login(user_four)
        # binding.pry
        fill_in('q[name_or_country_cont_any]', with: "h" + "\n")
        click_on 'hostel1'
        sleep 2
        expect(page).to have_content 'お店たくさんあります'
      end
    end

    context '予約をする場合' do
      it '宿詳細画面の予約するボタンを押してホストとDMをする' do
        hostel = FactoryBot.create(:hostel, host_id: host_two.id)

        login(user_four)
        # binding.pry
        # expect(page).to have_content 'ログインしました。'
        fill_in('q[name_or_country_cont_any]', with: "h" + "\n")
        click_on 'hostel1'
        # binding.pry
        click_on '予約する'
        # visit message_rooms_path
        fill_in 'message[content]', with: '予約したい'
        click_on 'メッセージを送る'
        expect(page).to have_content '予約したい'
      end
    end
  end


end