require "test_helper"

class InformationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get information_index_url
    assert_response :success
  end

  test "should get show" do
    get information_show_url
    assert_response :success
  end

  test "should get new" do
    get information_new_url
    assert_response :success
  end

  test "should get create" do
    get information_create_url
    assert_response :success
  end

  test "should get edit" do
    get information_edit_url
    assert_response :success
  end

  test "should get update" do
    get information_update_url
    assert_response :success
  end

  test "should get destroy" do
    get information_destroy_url
    assert_response :success
  end
end
