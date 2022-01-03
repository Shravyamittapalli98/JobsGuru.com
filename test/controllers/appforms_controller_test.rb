require "test_helper"

class AppformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appform = appforms(:one)
  end

  test "should get index" do
    get appforms_url
    assert_response :success
  end

  test "should get new" do
    get new_appform_url
    assert_response :success
  end

  test "should create appform" do
    assert_difference('Appform.count') do
      post appforms_url, params: { appform: { city: @appform.city, current: @appform.current, enteryouremail: @appform.enteryouremail, experience: @appform.experience, fullname: @appform.fullname, mobileNo: @appform.mobileNo, qualification: @appform.qualification } }
    end

    assert_redirected_to appform_url(Appform.last)
  end

  test "should show appform" do
    get appform_url(@appform)
    assert_response :success
  end

  test "should get edit" do
    get edit_appform_url(@appform)
    assert_response :success
  end

  test "should update appform" do
    patch appform_url(@appform), params: { appform: { city: @appform.city, current: @appform.current, enteryouremail: @appform.enteryouremail, experience: @appform.experience, fullname: @appform.fullname, mobileNo: @appform.mobileNo, qualification: @appform.qualification } }
    assert_redirected_to appform_url(@appform)
  end

  test "should destroy appform" do
    assert_difference('Appform.count', -1) do
      delete appform_url(@appform)
    end

    assert_redirected_to appforms_url
  end
end
