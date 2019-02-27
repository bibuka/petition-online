class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, uniqueness: true,uniqueness: { case_sensitive: false },
 format: { with: VALID_EMAIL_REGEX }
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :city, presence: true
  validates :passport_number, presence: true, uniqueness:true, length: 8
  validates :phone_number, presence: true,
  validates :date_of_birth, presence:true,

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
