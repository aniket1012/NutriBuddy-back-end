class CreateNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrients do |t|
      t.string :name
      t.string :unit
      t.integer :qty
      t.integer :tag_id

      t.timestamps
    end
  end
end
