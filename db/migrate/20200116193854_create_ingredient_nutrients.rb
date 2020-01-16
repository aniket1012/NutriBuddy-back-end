class CreateIngredientNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_nutrients do |t|
      t.belongs_to :nutrient, null: false, foreign_key: true
      t.belongs_to :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
