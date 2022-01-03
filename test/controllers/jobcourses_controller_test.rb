require "test_helper"

class JobcoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobcourse = jobcourses(:one)
  end

  test "should get index" do
    get jobcourses_url
    assert_response :success
  end

  test "should get new" do
    get new_jobcourse_url
    assert_response :success
  end

  test "should create jobcourse" do
    assert_difference('Jobcourse.count') do
      post jobcourses_url, params: { jobcourse: { company: @jobcourse.company, designation: @jobcourse.designation, experience: @jobcourse.experience, qualification: @jobcourse.qualification, salary: @jobcourse.salary } }
    end

    assert_redirected_to jobcourse_url(Jobcourse.last)
  end

  test "should show jobcourse" do
    get jobcourse_url(@jobcourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobcourse_url(@jobcourse)
    assert_response :success
  end

  test "should update jobcourse" do
    patch jobcourse_url(@jobcourse), params: { jobcourse: { company: @jobcourse.company, designation: @jobcourse.designation, experience: @jobcourse.experience, qualification: @jobcourse.qualification, salary: @jobcourse.salary } }
    assert_redirected_to jobcourse_url(@jobcourse)
  end

  test "should destroy jobcourse" do
    assert_difference('Jobcourse.count', -1) do
      delete jobcourse_url(@jobcourse)
    end

    assert_redirected_to jobcourses_url
  end
end
