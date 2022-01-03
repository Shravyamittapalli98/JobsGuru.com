require "application_system_test_case"

class JobgurusTest < ApplicationSystemTestCase
  setup do
    @jobguru = jobgurus(:one)
  end

  test "visiting the index" do
    visit jobgurus_url
    assert_selector "h1", text: "Jobgurus"
  end

  test "creating a Jobguru" do
    visit jobgurus_url
    click_on "New Jobguru"

    fill_in "Company", with: @jobguru.company
    fill_in "Designation", with: @jobguru.designation
    fill_in "Experience", with: @jobguru.experience
    fill_in "Location", with: @jobguru.location
    fill_in "Qualification", with: @jobguru.qualification
    fill_in "Salary", with: @jobguru.salary
    click_on "Create Jobguru"

    assert_text "Jobguru was successfully created"
    click_on "Back"
  end

  test "updating a Jobguru" do
    visit jobgurus_url
    click_on "Edit", match: :first

    fill_in "Company", with: @jobguru.company
    fill_in "Designation", with: @jobguru.designation
    fill_in "Experience", with: @jobguru.experience
    fill_in "Location", with: @jobguru.location
    fill_in "Qualification", with: @jobguru.qualification
    fill_in "Salary", with: @jobguru.salary
    click_on "Update Jobguru"

    assert_text "Jobguru was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobguru" do
    visit jobgurus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobguru was successfully destroyed"
  end
end
