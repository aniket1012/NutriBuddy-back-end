class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :calories
      t.integer :total_fat
      t.integer :saturated_fat
      t.integer :trans_fat
      t.integer :polysaturated_fat
      t.integer :monosaturated_fat
      t.integer :cholestrol
      t.integer :sodium
      t.integer :potassium
      t.integer :total_carbohydrates
      t.integer :dietary_fiber
      t.integer :sugars
      t.integer :protien
      t.integer :vit_a
      t.integer :vit_c
      t.integer :calcium
      t.integer :iron

      t.timestamps
    end
  end
end
