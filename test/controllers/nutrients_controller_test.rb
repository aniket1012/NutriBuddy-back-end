require 'test_helper'

class NutrientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nutrients_index_url
    assert_response :success
  end

  test "should get show" do
    get nutrients_show_url
    assert_response :success
  end

  test "should get create" do
    get nutrients_create_url
    assert_response :success
  end

  test "should get update" do
    get nutrients_update_url
    assert_response :success
  end

  test "should get destroy" do
    get nutrients_destroy_url
    assert_response :success
  end

end
