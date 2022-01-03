require "test_helper"

class JobgurusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobguru = jobgurus(:one)
  end

  test "should get index" do
    get jobgurus_url
    assert_response :success
  end

  test "should get new" do
    get new_jobguru_url
    assert_response :success
  end

  test "should create jobguru" do
    assert_difference('Jobguru.count') do
      post jobgurus_url, params: { jobguru: { company: @jobguru.company, designation: @jobguru.designation, experience: @jobguru.experience, location: @jobguru.location, qualification: @jobguru.qualification, salary: @jobguru.salary } }
    end

    assert_redirected_to jobguru_url(Jobguru.last)
  end

  test "should show jobguru" do
    get jobguru_url(@jobguru)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobguru_url(@jobguru)
    assert_response :success
  end

  test "should update jobguru" do
    patch jobguru_url(@jobguru), params: { jobguru: { company: @jobguru.company, designation: @jobguru.designation, experience: @jobguru.experience, location: @jobguru.location, qualification: @jobguru.qualification, salary: @jobguru.salary } }
    assert_redirected_to jobguru_url(@jobguru)
  end

  test "should destroy jobguru" do
    assert_difference('Jobguru.count', -1) do
      delete jobguru_url(@jobguru)
    end

    assert_redirected_to jobgurus_url
  end
end
