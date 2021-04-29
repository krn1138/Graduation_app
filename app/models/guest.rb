class Guest < ApplicationRecord
    belongs_to :user
    # validates :address, presence: true
    # validates :phone_number, presence: true
    validates :phone_number,  presence: true, length: { maximum: 11 }
    enum gender: {
        女性: 0, 男性: 1, 答えない: 2
    }

    # def gender_str
    #     if self.gender == 'female'
    #         return "女性"
    #     elsif self.gender == 'male'
    #         return "男性"
    #     else
    #         return "答えない"
    #     end
    # end

end
