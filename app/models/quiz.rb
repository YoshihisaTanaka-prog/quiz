class Quiz < ApplicationRecord

    def choices
        if self.is_need_to_shuffle
            return Choise.where(quiz_id: self.id).order("RANDOM()")
        else
            return Choise.where(quiz_id: self.id)
        end
    end

    def user
        return User.find(self.user_id)
    end

end
