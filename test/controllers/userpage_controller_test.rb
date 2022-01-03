require "test_helper"

class UserpageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get userpage_new_url
    assert_response :success
  end

  test "should get create" do
    get userpage_create_url
    assert_response :success
  end

  test "should get destroy" do
    get userpage_destroy_url
    assert_response :success
  end

  test "should get welcome" do
    get userpage_welcome_url
    assert_response :success
  end
end
