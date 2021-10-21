class Category < ApplicationRecord

    def quizzes
        if self.is_need_to_shuffle
            return Quiz.where(category_id: self.id).order("RANDOM()")
        else
            return Quiz.where(category_id: self.id)
        end
    end

    def user
        return User.find(self.user_id)
    end

end
