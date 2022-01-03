require "application_system_test_case"

class JobcoursesTest < ApplicationSystemTestCase
  setup do
    @jobcourse = jobcourses(:one)
  end

  test "visiting the index" do
    visit jobcourses_url
    assert_selector "h1", text: "Jobcourses"
  end

  test "creating a Jobcourse" do
    visit jobcourses_url
    click_on "New Jobcourse"

    fill_in "Company", with: @jobcourse.company
    fill_in "Designation", with: @jobcourse.designation
    fill_in "Experience", with: @jobcourse.experience
    fill_in "Qualification", with: @jobcourse.qualification
    fill_in "Salary", with: @jobcourse.salary
    click_on "Create Jobcourse"

    assert_text "Jobcourse was successfully created"
    click_on "Back"
  end

  test "updating a Jobcourse" do
    visit jobcourses_url
    click_on "Edit", match: :first

    fill_in "Company", with: @jobcourse.company
    fill_in "Designation", with: @jobcourse.designation
    fill_in "Experience", with: @jobcourse.experience
    fill_in "Qualification", with: @jobcourse.qualification
    fill_in "Salary", with: @jobcourse.salary
    click_on "Update Jobcourse"

    assert_text "Jobcourse was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobcourse" do
    visit jobcourses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobcourse was successfully destroyed"
  end
end
