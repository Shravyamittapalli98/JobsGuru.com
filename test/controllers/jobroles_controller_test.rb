require "test_helper"

class JobrolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobrole = jobroles(:one)
  end

  test "should get index" do
    get jobroles_url
    assert_response :success
  end

  test "should get new" do
    get new_jobrole_url
    assert_response :success
  end

  test "should create jobrole" do
    assert_difference('Jobrole.count') do
      post jobroles_url, params: { jobrole: { company: @jobrole.company, designation: @jobrole.designation, experience: @jobrole.experience, qualification: @jobrole.qualification, salary: @jobrole.salary } }
    end

    assert_redirected_to jobrole_url(Jobrole.last)
  end

  test "should show jobrole" do
    get jobrole_url(@jobrole)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobrole_url(@jobrole)
    assert_response :success
  end

  test "should update jobrole" do
    patch jobrole_url(@jobrole), params: { jobrole: { company: @jobrole.company, designation: @jobrole.designation, experience: @jobrole.experience, qualification: @jobrole.qualification, salary: @jobrole.salary } }
    assert_redirected_to jobrole_url(@jobrole)
  end

  test "should destroy jobrole" do
    assert_difference('Jobrole.count', -1) do
      delete jobrole_url(@jobrole)
    end

    assert_redirected_to jobroles_url
  end
end
