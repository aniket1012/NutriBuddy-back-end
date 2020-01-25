class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :calories, :total_fat, :saturated_fat, :trans_fat, :polysaturated_fat, :monosaturated_fat, :cholestrol, :sodium, :potassium, :total_carbohydrates, :dietary_fiber, :sugars, :protien, :vit_a, :vit_c, :calcium, :iron, :day, :category
  has_many :user_meals
  has_many :users, through: :user_meals
  has_many :ingredients
  has_many :ingredients, through: :meal_ingredients
end
