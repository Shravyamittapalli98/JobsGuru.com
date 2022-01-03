require "test_helper"

class JoblocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joblocation = joblocations(:one)
  end

  test "should get index" do
    get joblocations_url
    assert_response :success
  end

  test "should get new" do
    get new_joblocation_url
    assert_response :success
  end

  test "should create joblocation" do
    assert_difference('Joblocation.count') do
      post joblocations_url, params: { joblocation: { company: @joblocation.company, designation: @joblocation.designation, experience: @joblocation.experience, qualification: @joblocation.qualification, salary: @joblocation.salary } }
    end

    assert_redirected_to joblocation_url(Joblocation.last)
  end

  test "should show joblocation" do
    get joblocation_url(@joblocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_joblocation_url(@joblocation)
    assert_response :success
  end

  test "should update joblocation" do
    patch joblocation_url(@joblocation), params: { joblocation: { company: @joblocation.company, designation: @joblocation.designation, experience: @joblocation.experience, qualification: @joblocation.qualification, salary: @joblocation.salary } }
    assert_redirected_to joblocation_url(@joblocation)
  end

  test "should destroy joblocation" do
    assert_difference('Joblocation.count', -1) do
      delete joblocation_url(@joblocation)
    end

    assert_redirected_to joblocations_url
  end
end
