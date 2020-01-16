class User < ApplicationRecord
    has_many :user_meals
    has_many :meals, through: :user_meals
    has_secure_password 
    validates :user_name, :email, :password_digest, presence: true
    validates :user_name, :email, uniqueness: true
end
