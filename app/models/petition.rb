class Petition < ApplicationRecord
    validates :title, presence: true, length: { minimum: 4, maximum: 25 }
    validates :description, presence: true, length: { minimum: 100, maximum: 400 }
end
