class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    # validate :sufficiently_clickbaity

    # def sufficiently_clickbaity
    #     if title.include?("Won't Believe") || title.include?("Secret") || title.include?("Top") || title.include?("Guess")
    #         errors.add(:title, "can't be in the past")
    #     end
    # end
end


