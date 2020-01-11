class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :food_group
      t.integer :qty
      t.string :unit
      t.integer :weight
      t.string :photo
      t.integer :calories

      t.timestamps
    end
  end
end
