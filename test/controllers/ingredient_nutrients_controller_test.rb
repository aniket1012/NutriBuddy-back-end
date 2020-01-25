require 'test_helper'

class IngredientNutrientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingredient_nutrients_index_url
    assert_response :success
  end

  test "should get show" do
    get ingredient_nutrients_show_url
    assert_response :success
  end

  test "should get create" do
    get ingredient_nutrients_create_url
    assert_response :success
  end

  test "should get update" do
    get ingredient_nutrients_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ingredient_nutrients_destroy_url
    assert_response :success
  end

end
