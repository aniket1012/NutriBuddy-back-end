class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_name, :email, :password_digest
  has_many :meals
  has_many :meals, through: :user_meals
end
