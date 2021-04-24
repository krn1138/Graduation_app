require 'rails_helper'
RSpec.describe Task, type: :model do
  it '入力欄が全て入力された場合、問題なく投稿できる' do
    user = FactoryBot.create(:user)

    task = FactoryBot.create(:tasktwo, user_id: user.id)
    expect(task).to be_valid
  end

