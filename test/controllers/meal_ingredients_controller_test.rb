require 'test_helper'

class MealIngredientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meal_ingredients_index_url
    assert_response :success
  end

  test "should get show" do
    get meal_ingredients_show_url
    assert_response :success
  end

  test "should get create" do
    get meal_ingredients_create_url
    assert_response :success
  end

  test "should get update" do
    get meal_ingredients_update_url
    assert_response :success
  end

  test "should get destroy" do
    get meal_ingredients_destroy_url
    assert_response :success
  end

end
