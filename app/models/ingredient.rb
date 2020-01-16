class Ingredient < ApplicationRecord
    has_many :meal_ingredients
    has_many :meals, through: :meal_ingredients
    has_many :ingredient_nutrients
    has_many :nutrients, through: :ingredient_nutrients
end
