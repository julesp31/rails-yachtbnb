require "test_helper"

class YachtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yachts_index_url
    assert_response :success
  end

  test "should get show" do
    get yachts_show_url
    assert_response :success
  end

  test "should get new" do
    get yachts_new_url
    assert_response :success
  end

  test "should get create" do
    get yachts_create_url
    assert_response :success
  end
end
