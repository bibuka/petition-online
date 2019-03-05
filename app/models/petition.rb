class Petition < ApplicationRecord

    validates :title, presence: true, length: { minimum: 4, maximum: 255 }
    validates :description, presence: true, length: { minimum: 1, maximum: 10000 }
    belongs_to :user
    validates :user_id, presence: true
    acts_as_votable
end
