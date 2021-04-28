class Guest < ApplicationRecord
    belongs_to :user
    validates :address, presence: true


    enum gender: {
        female: 0, male: 1, nothing: 2
    }

    def gender_str
        if self.gender == 'female'
            return "女性"
        elsif self.gender == 'male'
            return "男性"
        else
            return "答えない"
        end
    end

end
