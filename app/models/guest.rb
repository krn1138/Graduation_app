class Guest < ApplicationRecord
    belongs_to :user

    enum gender: {
    女性:0, 男性:1, 答えない:2
  }
end
