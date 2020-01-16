# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_16_194510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredient_nutrients", force: :cascade do |t|
    t.bigint "nutrient_id", null: false
    t.bigint "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_ingredient_nutrients_on_ingredient_id"
    t.index ["nutrient_id"], name: "index_ingredient_nutrients_on_nutrient_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "food_group"
    t.integer "qty"
    t.string "unit"
    t.integer "weight"
    t.string "photo"
    t.integer "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_meal_ingredients_on_ingredient_id"
    t.index ["meal_id"], name: "index_meal_ingredients_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "total_fat"
    t.integer "saturated_fat"
    t.integer "trans_fat"
    t.integer "polysaturated_fat"
    t.integer "monosaturated_fat"
    t.integer "cholestrol"
    t.integer "sodium"
    t.integer "potassium"
    t.integer "total_carbohydrates"
    t.integer "dietary_fiber"
    t.integer "sugars"
    t.integer "protien"
    t.integer "vit_a"
    t.integer "vit_c"
    t.integer "calcium"
    t.integer "iron"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "day"
    t.string "category"
  end

  create_table "nutrients", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.integer "qty"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_meals", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_user_meals_on_meal_id"
    t.index ["user_id"], name: "index_user_meals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ingredient_nutrients", "ingredients"
  add_foreign_key "ingredient_nutrients", "nutrients"
  add_foreign_key "meal_ingredients", "ingredients"
  add_foreign_key "meal_ingredients", "meals"
  add_foreign_key "user_meals", "meals"
  add_foreign_key "user_meals", "users"
end
